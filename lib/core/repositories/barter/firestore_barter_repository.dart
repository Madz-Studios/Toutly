import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterRepository {
  Future<void> createBarterMarketItem({@required BarterModel barterModel});

  Stream<QuerySnapshot> getAllBarterItemsUsingUserId(
      {@required String userId, @required DocumentSnapshot lastDoc});

  Future<void> updateBarterItem({@required BarterModel barterModel});
}

@Injectable(as: FirestoreBarterRepository)
@lazySingleton
class FirestoreBarterRepositoryImpl extends FirestoreBarterRepository {
  FirestoreBarterRepositoryImpl({@required this.firestore});

  static const limit = 10;

  final Firestore firestore;

  /// Create a barter item in barter firestore collection using [itemId]
  @override
  Future<void> createBarterMarketItem({BarterModel barterModel}) async {
    final String barterCollection = FirestoreCollectionNames.barterCollection;

    await firestore
        .collection(barterCollection)
        .document(barterModel.itemId)
        .setData(barterModel.toJson());
  }

  /// Get "ALL" barter item in barter firestore collection using [userId].
  @override
  Stream<QuerySnapshot> getAllBarterItemsUsingUserId(
      {String userId, @required DocumentSnapshot lastDoc}) {
    final String barterCollection = FirestoreCollectionNames.barterCollection;

    final query = firestore
        .collection(barterCollection)
        .where('userId', isEqualTo: userId)
        .orderBy('dateCreated', descending: true)
        .snapshots();

    return query;
  }

  /// Update a barter item in barter firestore collection using [itemId].
  @override
  Future<void> updateBarterItem({BarterModel barterModel}) async {
    final String barterCollection = FirestoreCollectionNames.barterCollection;

    await firestore
        .collection(barterCollection)
        .document(barterModel.itemId)
        .updateData(barterModel.toJson());
  }
}
