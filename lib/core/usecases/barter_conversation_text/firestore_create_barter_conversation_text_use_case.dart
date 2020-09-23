// import 'package:Toutly/core/repositories/barter_conversation_text/firestore_barter_conversation_text_repository.dart';
// import 'package:Toutly/core/usecases/param/barter_conversation_text/use_case_barter_conversation_text_param.dart';
// import 'package:Toutly/core/usecases/param/usecase.dart';
// import 'package:injectable/injectable.dart';
//
// @lazySingleton
// class FirestoreCreateBarterConversationTextUseCase
//     implements UseCaseFirestore<void, UseCaseBarterConversationTextModelParam> {
//   final FirestoreBarterConversationTextRepository
//       firestoreBarterConversationTextRepository;
//
//   FirestoreCreateBarterConversationTextUseCase(
//       {this.firestoreBarterConversationTextRepository});
//
//   @override
//   Future<void> call(UseCaseBarterConversationTextModelParam params) async {
//     firestoreBarterConversationTextRepository.createBarterConversationText(
//       params.barterMessageId,
//       params.barterConversationTextModel,
//     );
//   }
// }
