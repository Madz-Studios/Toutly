import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterRepository {
  Future<void> createBarterMarketItem(BarterModel barterModel);

  Stream<QuerySnapshot> getAllBarterItemsUsingUserId(String userId);

  Future<List<BarterModel>> getFutureAllLikesBarterItemsUsingItemIdList(
      List<String> itemIds);

  Future<void> updateBarterItem(BarterModel barterModel);

  Future<void> deleteBarterItem(BarterModel barterModel);

  Future<BarterModel> getBarterUsingItemId(String itemId);
}

@Injectable(as: FirestoreBarterRepository)
@lazySingleton
class FirestoreBarterRepositoryImpl extends FirestoreBarterRepository {
  FirestoreBarterRepositoryImpl(
    this.firestore,
    this.firebaseStorage,
  );

  static const limit = 10;

  final Firestore firestore;
  final FirebaseStorage firebaseStorage;

  /// Create a barter item in barter firestore collection using [documentID]
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

//  @override
//  Future<List<BarterModel>> getFutureAllBarterItemsUsingUserId(
//      String userId) async {
//    final String barterCollection =
//        FirestoreCollectionNames.barterItemsCollection;
//
//    final barterItems = await firestore
//        .collection(barterCollection)
//        .where('userId', isEqualTo: userId)
//        .orderBy('dateCreated', descending: true)
//        .getDocuments();
//
//    List<BarterModel> listBarterItems = [];
//    if (barterItems.documents.isNotEmpty) {
//      for (final item in barterItems.documents) {
//        final barterModel = BarterModel.fromJson(item.data);
//
//        listBarterItems.add(barterModel);
//      }
//    }
//    return listBarterItems;
//  }

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
    //delete all the photos in cloud storage related to the barter item being deleted.
    for (String photoUrl in barterModel.photosUrl) {
      final storageRef = await firebaseStorage.getReferenceFromUrl(photoUrl);
      storageRef.delete();
    }

    await firestore
        .collection(FirestoreCollectionNames.barterItemsCollection)
        .document(barterModel.itemId)
        .delete();
  }

  @override
  Future<BarterModel> getBarterUsingItemId(String itemId) async {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    final barterItem = await firestore
        .collection(barterCollection)
        .where('itemId', isEqualTo: itemId)
        .orderBy('dateCreated', descending: true)
        .getDocuments();

    final barterModel = BarterModel.fromJson(barterItem.documents[0].data);

    return barterModel;
  }

  @override
  Future<List<BarterModel>> getFutureAllLikesBarterItemsUsingItemIdList(
      List<String> itemIds) async {
    List<BarterModel> listBarterItems = [];

    for (final itemId in itemIds) {
      final barterItems = await firestore
          .collection(FirestoreCollectionNames.barterItemsCollection)
          .where('itemId', isEqualTo: itemId)
          .orderBy('dateCreated', descending: true)
          .getDocuments();

      if (barterItems.documents.isNotEmpty) {
        for (final item in barterItems.documents) {
          final barterModel = BarterModel.fromJson(item.data);

          listBarterItems.add(barterModel);
        }
      }
    }

    return listBarterItems;
  }
}
