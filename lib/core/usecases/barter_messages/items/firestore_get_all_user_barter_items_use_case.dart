// import 'package:Toutly/core/models/barter/barter_model.dart';
// import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
// import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreGetAllBarterItemsUseCase
//     implements UseCaseFirestoreQuery<void, UseCaseItemIdParam> {
//   final FirestoreBarterRepository firestoreBarterRepository;
//
//   FirestoreGetAllBarterItemsUseCase({this.firestoreBarterRepository});
//
//   @override
//   Future<BarterModel> call(UseCaseItemIdParam params) {
//     return firestoreBarterRepository.getBarterUsingItemId(params.itemId);
//   }
// }
