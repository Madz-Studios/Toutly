const functions = require("firebase-functions");
const algoliasearch = require("algoliasearch");
const admin = require("firebase-admin");
admin.initializeApp();

// [START init_algolia]
// Initialize Algolia, requires installing Algolia dependencies:
// https://www.algolia.com/doc/api-client/javascript/getting-started/#install
//
// App ID and API Key are stored in functions config variables
const ALGOLIA_ID = functions.config().algolia.app_id;
const ALGOLIA_ADMIN_KEY = functions.config().algolia.api_key;
const ALGOLIA_SEARCH_KEY = functions.config().algolia.search_key;

const ALGOLIA_INDEX_NAME = "barter_index";
const algoliaClient = algoliasearch(ALGOLIA_ID, ALGOLIA_ADMIN_KEY);
// [END init_algolia]

// [START update_index_function]
// Update the search index every time a barter post is written, update or deleted.

//ADD BARTER ITEM
exports.onBarterCreated = functions.firestore
  .document("barter_items/{barterId}")
  .onCreate((snap, context) => {
    // Get the note document
    const barter = snap.data();

    // Add an 'objectID' field which Algolia requires
    barter.objectID = context.params.barterId;

    // Write to the algolia index
    const index = algoliaClient.initIndex(ALGOLIA_INDEX_NAME);
    return index.saveObject(barter);
  });

//REMOVE BARTER ITEM
exports.onBarterDeleted = functions.firestore
  .document("barter_items/{barterId}")
  .onDelete((snap, context) => {
    // Delete an apartment from the algolia index
    const index = algoliaClient.initIndex(ALGOLIA_INDEX_NAME);
    return index.deleteObject(context.params.barterId);
  });
//EDIT BARTER ITEM
exports.onBarterEdited = functions.firestore
  .document("barter_items/{barterId}")
  .onUpdate((change, context) => {
    const newValue = change.after.data();
    const previousValue = change.before.data();
    newValue.objectID = context.params.barterId;
    // Write the update to the algolia index
    const index = algoliaClient.initIndex(ALGOLIA_INDEX_NAME);
    return index.saveObject(newValue);
  });
// [END update_index_function]

// [START get_firebase_user]

async function getFirebaseUser(req, res, next) {
  console.log("Check if request is authorized with Firebase ID token");

  if (
    !req.headers.authorization ||
    !req.headers.authorization.startsWith("Bearer ")
  ) {
    console.error(
      "No Firebase ID token was passed as a Bearer token in the Authorization header.",
      "Make sure you authorize your request by providing the following HTTP header:",
      "Authorization: Bearer <Firebase ID Token>"
    );
    return res.sendStatus(403);
  }

  let idToken;
  if (
    req.headers.authorization &&
    req.headers.authorization.startsWith("Bearer ")
  ) {
    console.log("Found 'Authorization' header");
    idToken = req.headers.authorization.split("Bearer ")[1];
  }

  try {
    const decodedIdToken = await admin.auth().verifyIdToken(idToken);
    console.log("ID Token correctly decoded", decodedIdToken);
    req.user = decodedIdToken;
    return next();
  } catch (error) {
    console.error("Error while verifying Firebase ID token:", error);
    return res.status(403).send("Unauthorized");
  }
}
// [END get_firebase_user]

// [START get_algolia_user_token]
// This complex HTTP function will be created as an ExpressJS app:
// https://expressjs.com/en/4x/api.html
const app = require("express")();

// We'll enable CORS support to allow the function to be invoked
// from our app client-side.
app.use(require("cors")({ origin: true }));

// Then we'll also use a special 'getFirebaseUser' middleware which
// verifies the Authorization header and adds a `user` field to the
// incoming request:
// https://gist.github.com/abeisgoat/832d6f8665454d0cd99ef08c229afb42
app.use(getFirebaseUser);

// Add a route handler to the app to generate the secured key
app.get("/", (req, res) => {
  // Create the params object as described in the Algolia documentation:
  // https://www.algolia.com/doc/guides/security/api-keys/#generating-api-keys
  const params = {
    // This filter ensures that only documents where author == user_id will be readable
    //filters: `author:${req.user.user_id}`,
    // We also proxy the user_id as a unique token for this key.
    userToken: req.user.user_id,
  };

  // Call the Algolia API to generate a unique key based on our search key
  const key = algoliaClient.generateSecuredApiKey(ALGOLIA_SEARCH_KEY, params);

  // Then return this key as {key: '...key'}
  res.json({ key });
});

// Finally, pass our ExpressJS app to Cloud Functions as a function
// called 'getSearchKey';
exports.getSearchKey = functions.https.onRequest(app);
// [END get_algolia_user_token]

//[START - Automated firestore backup - Toutly Production]

const firestore = require("@google-cloud/firestore");
const firebaseClient = new firestore.v1.FirestoreAdminClient();

// Replace BUCKET_NAME
const bucket = "gs://automated_firestore_backup";

exports.scheduledFirestoreExport = functions.pubsub
  .schedule("every 24 hours")
  .onRun((context) => {
    const projectId = process.env.GCP_PROJECT || process.env.GCLOUD_PROJECT;
    const databaseName = firebaseClient.databasePath(projectId, "(default)");

    return firebaseClient
      .exportDocuments({
        name: databaseName,
        outputUriPrefix: bucket,
        // Leave collectionIds empty to export all collections
        // or set to a list of collection IDs to export,
        // collectionIds: ['users', 'posts']
        collectionIds: [],
      })
      .then((responses) => {
        const response = responses[0];
        console.log(`Operation Name: ${response["name"]}`);

        return response;
      })
      .catch((err) => {
        console.error(err);
        throw new Error("Export operation failed");
      });
  });

//[END - Automated firestore backup]

//[START - Create Notification when a User start an offer to a barter item]

exports.sendMessageNotificationToDevice = functions.https.onCall(
  async (data, context) => {
    // const { tokens } = data; // Data is what you'd send from callable.call
    const tokens = data.tokens;
    const title = data.title;
    const body = data.body;

    const payload = {
      notification: {
        title: title,
        body: body,
        click_action: "FLUTTER_NOTIFICATION_CLICK",
      },
    };
    console.log(
      "called sendMessageNotificationToDevice title = " +
        title +
        " body = " +
        body +
        " tokens = " +
        tokens
    );
    const response = await admin.messaging().sendToDevice(tokens, payload);
  }
);

//[END - Create Notification when a User start an offer to a barter item]
