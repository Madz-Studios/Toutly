// import 'package:Toutly/core/models/user/fcm_token/fcm_token_model.dart';
// import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreGetAllFcmTokenUseCase
//     implements UseCaseFirestore<void, UseCaseUserParamUserId> {
//   final FirestoreUserRepository firestoreUserRepository;
//
//   FirestoreGetAllFcmTokenUseCase({this.firestoreUserRepository});
//
//   @override
//   Future<List<FcmTokenModel>> call(UseCaseUserParamUserId params) async {
//     return firestoreUserRepository.getTokensUsingUserId(params.userId);
//   }
// }
