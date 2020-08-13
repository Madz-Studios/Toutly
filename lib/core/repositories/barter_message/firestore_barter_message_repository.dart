import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterMessageRepository {
  Future<void> createBarterMessage(BarterMessageModel barterMessageModel);

  Stream<QuerySnapshot> getStreamAllBarterMessagesUsingUserId(String userId);

  Stream<QuerySnapshot> getStreamAllOfferMessagesUsingUserId(String userId);
}

@Injectable(as: FirestoreBarterMessageRepository)
@lazySingleton
class FirestoreBarterMessageRepositoryImpl
    extends FirestoreBarterMessageRepository {
  FirestoreBarterMessageRepositoryImpl({
    @required this.firestore,
  });

  final Firestore firestore;

  @override
  Future<void> createBarterMessage(
      BarterMessageModel barterMessageModel) async {
    await firestore
        .collection(FirestoreCollectionNames.barterMessagesCollection)
        .document(barterMessageModel.barterMessageId)
        .setData(barterMessageModel.toJson());
  }

  /// Get all the messages that you offered to a bartered items.
  Stream<QuerySnapshot> getStreamAllBarterMessagesUsingUserId(String userId) {
    final query = firestore
        .collection(FirestoreCollectionNames.barterMessagesCollection)
        .where('userBarter', isEqualTo: userId)
        .orderBy('dateCreated', descending: true)
        .snapshots();

    return query;
  }

  /// Get all the messages that make an offer to your bartered item
  @override
  Stream<QuerySnapshot> getStreamAllOfferMessagesUsingUserId(String userId) {
    final query = firestore
        .collection(FirestoreCollectionNames.barterMessagesCollection)
        .where('userOffer', isEqualTo: userId)
        .orderBy('dateCreated', descending: true)
        .snapshots();

    return query;
  }
}
