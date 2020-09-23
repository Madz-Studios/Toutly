// import 'package:Toutly/core/repositories/auth/firebase_auth_user_repository.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
// import 'package:injectable/injectable.dart';
// import 'package:meta/meta.dart';
//
// @lazySingleton
// class FirebaseSendResetPasswordUseCase
//     implements UseCaseFirestore<void, UseCaseUserParamEmail> {
//   final FirebaseAuthUserRepository firebaseAuthUserRepository;
//
//   FirebaseSendResetPasswordUseCase({
//     @required this.firebaseAuthUserRepository,
//   });
//
//   @override
//   Future<void> call(UseCaseUserParamEmail params) async {
//     return await firebaseAuthUserRepository
//         .sendPasswordResetEmail(params.email);
//   }
// }
