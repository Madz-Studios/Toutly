// import 'package:Toutly/core/models/user/user_model.dart';
// import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreGetUserUseCase
//     implements UseCaseFirestore<UserModel, UseCaseUserParamUserId> {
//   final FirestoreUserRepository firestoreUserRepository;
//
//   FirestoreGetUserUseCase({this.firestoreUserRepository});
//   @override
//   Future<UserModel> call(UseCaseUserParamUserId params) async {
//     return await firestoreUserRepository.getUserUsingUserId(params.userId);
//   }
// }
