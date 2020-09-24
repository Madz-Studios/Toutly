// import 'package:Toutly/core/models/barter/barter_model.dart';
// import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
// import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreGetAllOfferItemsUseCase
//     implements UseCaseFirestoreQuery<void, UseCaseItemIdListParam> {
//   final FirestoreBarterRepository firestoreBarterRepository;
//
//   FirestoreGetAllOfferItemsUseCase(this.firestoreBarterRepository);
//
//   @override
//   Future<List<BarterModel>> call(UseCaseItemIdListParam params) {
//     return firestoreBarterRepository
//         .getFutureAllBarterItemsUsingItemIdList(params.itemIds);
//   }
// }
