// import 'package:Toutly/core/repositories/barter_item/firestore_barter_repository.dart';
// import 'package:Toutly/core/usecases/param/barter/use_case_barter_param.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreGetPublicBarterItemsUsingUserIdUseCase
//     implements UseCaseFirestoreQuery<void, UseCaseUserIdParam> {
//   final FirestoreBarterRepository firestoreBarterRepository;
//
//   FirestoreGetPublicBarterItemsUsingUserIdUseCase(
//       {this.firestoreBarterRepository});
//
//   @override
//   Stream<QuerySnapshot> call(UseCaseUserIdParam params) {
//     return firestoreBarterRepository
//         .getPublicBarterItemsUsingUserId(params.userId);
//   }
// }
