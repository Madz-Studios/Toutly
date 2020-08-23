import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

///FirebaseAuthUserRepository repository
abstract class FirebaseAuthUserRepository {
  ///Called whn singing in with google account.
  Future<void> signInWithGoogle();

  ///Called whn singing in with facebook account.
  Future<void> signInWithFacebook();

  ///Called whn singing in with facebook account.
  Future<void> signInWithApple();

  ///Called when singing in using [email] and [password]
  Future<void> signInWithCredentials(String email, String password);

  ///Called when a user is signing up using [email] and [password]
  Future<void> signUp({@required String email, @required String password});

  ///Called when a user is signing out.
  Future<void> signOut();

  ///Check if a user is signed in or not.
  bool isSignedIn();

  ///Get the current logged in firebase user
  User getUser();

  Future<void> sendPasswordResetEmail(String email);
}

@Injectable(as: FirebaseAuthUserRepository)
@lazySingleton
class FirebaseAuthUserRepositoryImpl implements FirebaseAuthUserRepository {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FacebookLogin facebookLogin;

  ///create a user auth remote data source
  FirebaseAuthUserRepositoryImpl({
    @required this.firebaseAuth,
    @required this.googleSignIn,
    @required this.facebookLogin,
  });

  ///Called when singing in with google account.
  Future<void> signInWithGoogle() async {
    final credential = await _getGoogleCredential();
    await firebaseAuth.signInWithCredential(credential);
  }

  Future<AuthCredential> _getGoogleCredential() async {
    try {
      final googleUser = await googleSignIn.signIn();
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return credential;
    } on PlatformException catch (e) {
      throw PlatformException(
        code: 'ERROR_AUTHORIZATION_DENIED',
        message: 'There was a problem in serving your request. ${e.details}',
      );
    } on Exception {
      throw PlatformException(
        code: 'ERROR_AUTHORIZATION_DENIED',
        message: 'There was a problem is serving your request.',
      );
    }
  }

  ///Called when singing in with facebook account.
  @override
  Future<void> signInWithFacebook() async {
    final credential = await _getFacebookCredential();
    await firebaseAuth.signInWithCredential(credential);
  }

  Future<AuthCredential> _getFacebookCredential() async {
    final result = await facebookLogin.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    FacebookAuthCredential credential;

    switch (result.status) {
      case FacebookLoginStatus.Success:
        final FacebookAccessToken accessToken = result.accessToken;

        credential = FacebookAuthProvider.credential(
          accessToken.token,
        );
        break;
      case FacebookLoginStatus.Cancel:
        throw PlatformException(
          code: AppConstants.codeErrorAbortedByUser,
          message: AppConstants.messageErrorAbortedByUser,
        );
        break;
      case FacebookLoginStatus.Error:
        debugPrint(result.error.toString());
        throw PlatformException(
          code: AppConstants.codeErrorAuthDenied,
          message: AppConstants.messageErrorAuthDenied,
        );
        break;
    }

    return credential;
  }

  ///Called when singing in with google account.
  Future<void> signInWithApple() async {
    final credential = await _getAppleCredential();
    await firebaseAuth.signInWithCredential(credential);
  }

  ///Called when getting apple account credential.
  Future<AuthCredential> _getAppleCredential() async {
    final appleIdCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final oAuthProvider = OAuthProvider('apple.com');

    AuthCredential credential = oAuthProvider.credential(
      idToken: appleIdCredential.identityToken,
      accessToken: appleIdCredential.authorizationCode,
    );

    return credential;
  }

  ///Called when singing in using [email] and [password]
  Future<void> signInWithCredentials(String email, String password) async {
    final credential = await getEmailPasswordCredential(email, password);
    await firebaseAuth.signInWithCredential(credential);
  }

  Future<AuthCredential> getEmailPasswordCredential(
      String email, String password) async {
    final credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );

    return credential;
  }

  ///Called when a user is signing up using [email] and [password]
  Future<void> signUp({String email, String password}) async {
    await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  ///Called when a user is signing out.
  Future<void> signOut() async {
    return Future.wait([
      firebaseAuth.signOut(),
      googleSignIn.signOut(),
      facebookLogin.logOut(),
    ]);
  }

  ///Check if a user is signed in or not.
  bool isSignedIn() {
    final currentUser = firebaseAuth.currentUser;
    return currentUser != null;
  }

  @override
  User getUser() {
    return firebaseAuth.currentUser;
  }

  @override
  Future<void> sendPasswordResetEmail(String email) {
    firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
