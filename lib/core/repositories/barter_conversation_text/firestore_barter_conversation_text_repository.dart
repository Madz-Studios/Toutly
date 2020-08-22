import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterConversationTextRepository {
  Future<void> createBarterConversationText(String messageId,
      BarterConversationTextModel barterConversationTextModel);

  Stream<QuerySnapshot> getStreamAllConversationUsingMessageId(
      String messageId);
}

@Injectable(as: FirestoreBarterConversationTextRepository)
@lazySingleton
class FirestoreBarterConversationTextRepositoryImpl
    extends FirestoreBarterConversationTextRepository {
  FirestoreBarterConversationTextRepositoryImpl({
    @required this.firestore,
  });

  final FirebaseFirestore firestore;

  @override
  Future<void> createBarterConversationText(String messageId,
      BarterConversationTextModel barterConversationTextModel) async {
    await firestore
        .collection(FirestoreCollectionNames.barterMessagesCollection)
        .doc(messageId)
        .collection(FirestoreCollectionNames.barterConversationCollection)
        .add(barterConversationTextModel.toJson());
  }

  /// Get all conversation text from the message of the bartered item
  @override
  Stream<QuerySnapshot> getStreamAllConversationUsingMessageId(
      String messageId) {
    Stream<QuerySnapshot> query;
    try {
      query = firestore
          .collection(FirestoreCollectionNames.barterMessagesCollection)
          .doc(messageId)
          .collection(FirestoreCollectionNames.barterConversationCollection)
          .orderBy('dateCreated', descending: false)
          .snapshots();
    } on PlatformException catch (platformException) {
      throw PlatformException(code: platformException.code);
    } on Exception catch (e) {
      throw Exception(e);
    }

    return query;
  }
}
