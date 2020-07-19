import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterRepository {
  Future<void> createBarterMarketItem(BarterModel barterModel);

  Stream<QuerySnapshot> getAllBarterItemsUsingUserId(String userId);

  Future<List<BarterModel>> getFutureAllBarterItemsUsingUserId(String userId);

  Future<void> updateBarterItem(BarterModel barterModel);

  Future<void> deleteBarterItem(BarterModel barterModel);
}

@Injectable(as: FirestoreBarterRepository)
@lazySingleton
class FirestoreBarterRepositoryImpl extends FirestoreBarterRepository {
  FirestoreBarterRepositoryImpl({@required this.firestore});

  static const limit = 10;

  final Firestore firestore;

  /// Create a barter item in barter firestore collection using [itemId]
  @override
  Future<void> createBarterMarketItem(BarterModel barterModel) async {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    await firestore
        .collection(barterCollection)
        .document(barterModel.itemId)
        .setData(barterModel.toJson());
  }

  /// Get "ALL" barter item in barter firestore collection using [userId].
  @override
  Stream<QuerySnapshot> getAllBarterItemsUsingUserId(String userId) {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    final query = firestore
        .collection(barterCollection)
        .where('userId', isEqualTo: userId)
        .orderBy('dateCreated', descending: true)
        .snapshots();

    return query;
  }

  @override
  Future<List<BarterModel>> getFutureAllBarterItemsUsingUserId(
      String userId) async {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    final barterItems = await firestore
        .collection(barterCollection)
        .where('userId', isEqualTo: userId)
        .orderBy('dateCreated', descending: true)
        .getDocuments();

    List<BarterModel> listBarterItems = [];
    if (barterItems.documents.isNotEmpty) {
      for (final item in barterItems.documents) {
        final barterModel = BarterModel.fromJson(item.data);

        listBarterItems.add(barterModel);
      }
    }
    return listBarterItems;
  }

  /// Update a barter item in barter firestore collection using [itemId].
  @override
  Future<void> updateBarterItem(BarterModel barterModel) async {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    await firestore
        .collection(barterCollection)
        .document(barterModel.itemId)
        .updateData(barterModel.toJson());
  }

  /// Delete a barter item in barter firestore collection using [itemId].
  @override
  Future<void> deleteBarterItem(BarterModel barterModel) async {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    await firestore
        .collection(barterCollection)
        .document(barterModel.itemId)
        .delete();
  }
}
