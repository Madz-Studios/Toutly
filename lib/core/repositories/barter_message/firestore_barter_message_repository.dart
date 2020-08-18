import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
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

  final FirebaseFirestore firestore;

  @override
  Future<void> createBarterMessage(
      BarterMessageModel barterMessageModel) async {
    await firestore
        .collection(FirestoreCollectionNames.barterMessagesCollection)
        .doc(barterMessageModel.barterMessageId)
        .set(barterMessageModel.toJson());
  }

  /// Get all the messages that you offered to a bartered items.
  Stream<QuerySnapshot> getStreamAllBarterMessagesUsingUserId(String userId) {
    Stream<QuerySnapshot> query;
    try {
      query = firestore
          .collection(FirestoreCollectionNames.barterMessagesCollection)
          .where('userBarter', isEqualTo: userId)
          .orderBy('dateCreated', descending: true)
          .snapshots();
    } on PlatformException catch (platformException) {
      throw PlatformException(code: platformException.code);
    } on Exception catch (e) {
      throw Exception(e);
    }

    return query;
  }

  /// Get all the messages that make an offer to your bartered item
  @override
  Stream<QuerySnapshot> getStreamAllOfferMessagesUsingUserId(String userId) {
    Stream<QuerySnapshot> query;
    try {
      query = firestore
          .collection(FirestoreCollectionNames.barterMessagesCollection)
          .where('userOffer', isEqualTo: userId)
          .orderBy('dateCreated', descending: true)
          .snapshots();
    } on PlatformException catch (platformException) {
      throw PlatformException(code: platformException.code);
    } on Exception catch (e) {
      throw Exception(e);
    }

    return query;
  }
}
