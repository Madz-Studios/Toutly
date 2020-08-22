import 'package:Toutly/core/repositories/barter_conversation_text/firestore_barter_conversation_text_repository.dart';
import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
import 'package:Toutly/core/usecases/param/usecase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreGetAllConversationFromMessagesUseCase
    implements
        UseCaseFirestoreStream<QuerySnapshot,
            UseCaseAllConversationFromMessagesWithMessageIdParam> {
  final FirestoreBarterConversationTextRepository
      firestoreBarterConversationTextRepository;

  FirestoreGetAllConversationFromMessagesUseCase(
      {this.firestoreBarterConversationTextRepository});

  @override
  Stream<QuerySnapshot> call(
      UseCaseAllConversationFromMessagesWithMessageIdParam params) {
    return firestoreBarterConversationTextRepository
        .getStreamAllConversationUsingMessageId(params.messageId);
  }
}
