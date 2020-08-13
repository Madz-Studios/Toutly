import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterConversationTextRepository {
  Future<void> createBarterConversationText(String messageId,
      BarterConversationTextModel barterConversationTextModel);
}

@Injectable(as: FirestoreBarterConversationTextRepository)
@lazySingleton
class FirestoreBarterConversationTextRepositoryImpl
    extends FirestoreBarterConversationTextRepository {
  FirestoreBarterConversationTextRepositoryImpl({
    @required this.firestore,
  });

  final Firestore firestore;

  @override
  Future<void> createBarterConversationText(String messageId,
      BarterConversationTextModel barterConversationTextModel) async {
    await firestore
        .collection(FirestoreCollectionNames.barterMessagesCollection)
        .document(messageId)
        .collection(FirestoreCollectionNames.barterConversationCollection)
        .add(barterConversationTextModel.toJson());
  }
}
