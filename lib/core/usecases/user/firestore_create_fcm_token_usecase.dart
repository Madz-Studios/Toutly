// import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreCreateFcmTokenUseCase
//     implements UseCaseFirestore<void, UseCaseUserParamUserModel> {
//   final FirestoreUserRepository firestoreUserRepository;
//
//   FirestoreCreateFcmTokenUseCase({this.firestoreUserRepository});
//
//   @override
//   Future<void> call(UseCaseUserParamUserModel params) async {
//     await firestoreUserRepository
//         .createFcmTokenUsingUserModel(params.userModel);
//   }
// }
