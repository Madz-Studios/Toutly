# Start local hosting

firebase serve --only hosting

# Start Emulator

firebase emulators:start

# Deploy only functions

firebase deploy --only functions

# Deploy only hosting

firebase deploy --only hosting

# Firebase change project

## Production

firebase use toutly

## Development

firebase use toutly-dev-282014

## Set algolia cloud functions configuration

firebase functions:config:set algolia.app_id="<YOUR_APP_ID>" algolia.api_key="<YOUR_API_KEY>" algolia.search_key="<YOUR_SEARCH_KEY>"
