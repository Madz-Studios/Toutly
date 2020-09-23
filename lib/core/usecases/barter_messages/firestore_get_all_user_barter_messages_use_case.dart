// import 'package:Toutly/core/repositories/barter_message/firestore_barter_message_repository.dart';
// import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreGetAllBarterMessagesUseCase
//     implements
//         UseCaseFirestoreStream<QuerySnapshot,
//             UseCaseAllUserMessagesWithUserIdParam> {
//   final FirestoreBarterMessageRepository firestoreBarterMessagesRepository;
//
//   FirestoreGetAllBarterMessagesUseCase(
//       {this.firestoreBarterMessagesRepository});
//
//   @override
//   Stream<QuerySnapshot> call(UseCaseAllUserMessagesWithUserIdParam params) {
//     return firestoreBarterMessagesRepository
//         .getStreamAllBarterMessagesUsingUserId(params.userId);
//   }
// }
