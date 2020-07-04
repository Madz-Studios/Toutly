import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_apple_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_credentials_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_facebook_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signin_with_google_usecase.dart';
import 'package:Toutly/core/usecases/auth/firebase_signup_usecase.dart';
import 'package:Toutly/core/usecases/param/use_case_no_param.dart';
import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
import 'package:Toutly/core/usecases/user/firestore_create_user_usecase.dart';
import 'package:Toutly/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:Toutly/shared/util/validators.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_bloc.freezed.dart';
part 'sign_event.dart';
part 'sign_state.dart';

@lazySingleton
class SignBloc extends Bloc<SignEvent, SignState> {
  final FirebaseSignUpUseCase firebaseSignUpUseCase;
  final FirebaseSignedInWithGoogleUserUseCase
      firebaseSignedInWithGoogleUserUseCase;
  final FirebaseSignedInWithFacebookUserUseCase
      firebaseSignedInWithFacebookUserUseCase;
  final FirebaseSignedInWithAppleUserUseCase
      firebaseSignedInWithAppleUserUseCase;
  final FirebaseSignedInWithCredentialsUserUseCase
      firebaseSignedInWithCredentialsUserUseCase;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreCreateUserUseCase firestoreCreateUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  final Validators validators;

  SignBloc({
    @required this.firebaseSignUpUseCase,
    @required this.firebaseSignedInWithGoogleUserUseCase,
    @required this.firebaseSignedInWithFacebookUserUseCase,
    @required this.firebaseSignedInWithAppleUserUseCase,
    @required this.firebaseSignedInWithCredentialsUserUseCase,
    @required this.firebaseGetUserUseCase,
    @required this.firestoreCreateUserUseCase,
    @required this.firestoreGetUserUseCase,
    @required this.validators,
  })  : assert(firebaseSignUpUseCase != null),
        assert(firebaseSignedInWithGoogleUserUseCase != null),
        assert(firebaseSignedInWithFacebookUserUseCase != null),
        assert(firebaseSignedInWithCredentialsUserUseCase != null),
        assert(firebaseGetUserUseCase != null),
        assert(firestoreCreateUserUseCase != null),
        assert(firestoreGetUserUseCase != null),
        assert(validators != null);

  @override
  SignState get initialState => SignState.empty();

  @override
  Stream<SignState> mapEventToState(SignEvent event) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(
          isNameValid: validators.isValidTextLength4To30Chars(e.name),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
          info: '',
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          isEmailValid: validators.isValidEmail(e.email),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
          info: '',
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          isPasswordValid: validators.isValidPassword(e.password),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
          info: '',
        );
      },
      signUpWithNameEmailPasswordPressed: (e) async* {
        yield SignState.loading();
        try {
          await firebaseSignUpUseCase.call(
            UseCaseUserParamEmailPassword.init(
              e.email,
              e.password,
            ),
          );

          final user = await firebaseGetUserUseCase(UseCaseNoParam.init());

          UserModel userModel = UserModel(
            userId: user.uid,
            email: e.email,
            name: e.name,
          );

          await firestoreCreateUserUseCase
              .call(UseCaseUserParamUserModel.init(userModel));

          yield SignState.success(info: 'Successfully registered');
        } on PlatformException catch (platformException) {
          yield SignState.failure(info: platformException.message);
        }
      },
      signInWithEmailPasswordPressed: (e) async* {
        yield SignState.loading();
        try {
          await firebaseSignedInWithCredentialsUserUseCase(
            UseCaseUserParamEmailPassword.init(
              e.email,
              e.password,
            ),
          );
          yield SignState.success(info: 'Successfully logged in.');
        } on PlatformException catch (platFormException) {
          yield SignState.failure(info: platFormException.message);
        }
      },
      signInWithGooglePressed: (e) async* {
        yield SignState.loading();
        try {
          await firebaseSignedInWithGoogleUserUseCase(UseCaseNoParam.init());
          _createNewUserForSocialSignIn();

          yield SignState.success(info: 'Successfully logged in.');
        } on PlatformException catch (platFormException) {
          yield SignState.failure(info: platFormException.message);
        }
      },
      signInWithFacebookPressed: (e) async* {
        yield SignState.loading();
        try {
          await firebaseSignedInWithFacebookUserUseCase(UseCaseNoParam.init());
          _createNewUserForSocialSignIn();

          yield SignState.success(info: 'Successfully logged in.');
        } on PlatformException catch (platFormException) {
          if (platFormException.code != 'ERROR_ABORTED_BY_USER') {
            yield SignState.failure(info: platFormException.message);
          }
        }
      },
      signInWithApplePressed: (e) async* {
        yield SignState.loading();
        try {
          await firebaseSignedInWithAppleUserUseCase(UseCaseNoParam.init());
          _createNewUserForSocialSignIn();

          yield SignState.success(info: 'Successfully logged in.');
        } on PlatformException catch (platFormException) {
          if (platFormException.code != 'ERROR_ABORTED_BY_USER') {
            yield SignState.failure(info: platFormException.message);
          }
        }
      },
    );
  }

  void _createNewUserForSocialSignIn() async {
    final firebaseUser =
        await firebaseGetUserUseCase.call(UseCaseNoParam.init());
    final userStore = await firestoreGetUserUseCase
        .call(UseCaseUserParamUserId.init(firebaseUser.uid));

    if (userStore == null) {
      // if user is not existed in User Firestore create a User
      UserModel userModel = UserModel(
        userId: firebaseUser.uid,
        email: firebaseUser.email,
        name: firebaseUser.displayName,
        dateCreated: DateTime.now(),
        dateUpdated: DateTime.now(),
      );
      await firestoreCreateUserUseCase
          .call(UseCaseUserParamUserModel.init(userModel));
    }
  }
}
