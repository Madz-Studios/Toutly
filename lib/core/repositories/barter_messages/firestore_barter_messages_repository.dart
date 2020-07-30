import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterMessagesRepository {
  Future<void> createBarterMessages(
      String transactionId, BarterMessageModel barterMessageModel);
}

@Injectable(as: FirestoreBarterMessagesRepository)
@lazySingleton
class FirestoreBarterMessagesRepositoryImpl
    extends FirestoreBarterMessagesRepository {
  FirestoreBarterMessagesRepositoryImpl({
    @required this.firestore,
  });

  final Firestore firestore;

  @override
  Future<void> createBarterMessages(
      String transactionId, BarterMessageModel barterMessageModel) async {
    await firestore
        .collection(FirestoreCollectionNames.barterTransactionCollection)
        .document(transactionId)
        .collection(FirestoreCollectionNames.barterMessagesCollection)
        .add(barterMessageModel.toJson());
  }
}
