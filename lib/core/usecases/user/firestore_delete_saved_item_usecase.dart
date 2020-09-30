// import 'package:Toutly/core/repositories/user/firestore_user_repository.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:Toutly/core/usecases/param/user/use_case_user_param.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreDeleteSavedItemUseCase
//     implements
//         UseCaseFirestore<void, UseCaseUserParamUserModelWithSavedItemModel> {
//   final FirestoreUserRepository firestoreUserRepository;
//
//   FirestoreDeleteSavedItemUseCase({this.firestoreUserRepository});
//
//   @override
//   Future<void> call(UseCaseUserParamUserModelWithSavedItemModel params) async {
//     await firestoreUserRepository.deleteSavedItem(
//         params.user, params.savedItemModel);
//   }
// }
