import 'package:Toutly/core/models/algolia/algolia_geo_location.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterRepository {
  Future<void> createBarterMarketItem(BarterModel barterModel);

  Stream<QuerySnapshot> getAllBarterItemsUsingUserId(String userId);

  Stream<QuerySnapshot> getPrivateBarterItemsUsingUserId(String userId);

  Stream<QuerySnapshot> getPublicBarterItemsUsingUserId(String userId);

  Future<List<BarterModel>> getFutureAllBarterItemsUsingItemIdList(
      List<String> itemIds);

  Future<void> updateBarterItem(BarterModel barterModel);

  Future<void> updateAllBarterItemOfCurrentUser(UserModel userModel);

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

  final FirebaseFirestore firestore;
  final FirebaseStorage firebaseStorage;

  /// Create a barter item in barter firestore collection using [documentID]
  @override
  Future<void> createBarterMarketItem(BarterModel barterModel) async {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    await firestore
        .collection(barterCollection)
        .doc(barterModel.itemId)
        .set(barterModel.toJson());
  }

  /// Get "ALL" barter item in barter firestore collection using [userId].
  @override
  Stream<QuerySnapshot> getAllBarterItemsUsingUserId(String userId) {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    Stream<QuerySnapshot> query;
    try {
      query = firestore
          .collection(barterCollection)
          .where('userId', isEqualTo: userId)
          .orderBy('dateCreated', descending: true)
          .snapshots();
    } on PlatformException catch (platformException) {
      throw PlatformException(code: platformException.code);
    } on Exception catch (e) {
      throw Exception(e);
    }

    return query;
  }

  /// Get "Public" barter item in barter firestore collection using [userId].
  @override
  Stream<QuerySnapshot> getPublicBarterItemsUsingUserId(String userId) {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    Stream<QuerySnapshot> query;

    try {
      query = firestore
          .collection(barterCollection)
          .where('userId', isEqualTo: userId)
          .where('publicAccess', isEqualTo: true)
          .orderBy('dateCreated', descending: true)
          .snapshots();
    } on PlatformException catch (platformException) {
      throw PlatformException(code: platformException.code);
    } on Exception catch (e) {
      throw Exception(e);
    }

    return query;
  }

  /// Get "Private" barter item in barter firestore collection using [userId].
  @override
  Stream<QuerySnapshot> getPrivateBarterItemsUsingUserId(String userId) {
    Stream<QuerySnapshot> query;
    try {
      query = firestore
          .collection(FirestoreCollectionNames.barterItemsCollection)
          .where('userId', isEqualTo: userId)
          .where('publicAccess', isEqualTo: false)
          .orderBy('dateCreated', descending: true)
          .snapshots();
    } on PlatformException catch (platformException) {
      throw PlatformException(code: platformException.code);
    } on Exception catch (e) {
      throw Exception(e);
    }

    return query;
  }

  /// Update a barter item in barter firestore collection using [itemId].
  @override
  Future<void> updateBarterItem(BarterModel barterModel) async {
    final String barterCollection =
        FirestoreCollectionNames.barterItemsCollection;

    await firestore
        .collection(barterCollection)
        .doc(barterModel.itemId)
        .update(barterModel.toJson());
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
        .doc(barterModel.itemId)
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
        .get();

    if (barterItem.docs.isNotEmpty) {
      final barterModel = BarterModel.fromJson(barterItem.docs[0].data());

      return barterModel;
    }
    return Future.value();
  }

  @override
  Future<List<BarterModel>> getFutureAllBarterItemsUsingItemIdList(
      List<String> itemIds) async {
    List<BarterModel> listBarterItems = [];

    for (final itemId in itemIds) {
      final barterItems = await firestore
          .collection(FirestoreCollectionNames.barterItemsCollection)
          .where('itemId', isEqualTo: itemId)
          .orderBy('dateCreated', descending: true)
          .get();

      if (barterItems.docs.isNotEmpty) {
        for (final item in barterItems.docs) {
          final barterModel = BarterModel.fromJson(item.data());

          listBarterItems.add(barterModel);
        }
      }
    }

    return listBarterItems;
  }

  @override
  Future<void> updateAllBarterItemOfCurrentUser(UserModel userModel) async {
    final barterItems = await firestore
        .collection(FirestoreCollectionNames.barterItemsCollection)
        .where('userId', isEqualTo: userModel.userId)
        .get();

    if (barterItems.docs.isNotEmpty) {
      for (final item in barterItems.docs) {
        final barterModel = BarterModel.fromJson(item.data());
        barterModel.userFullName = userModel.name;
        barterModel.userPhotoUrl = userModel.photoUrl;
        barterModel.geoPoint = userModel.geoLocation;
        barterModel.algoliaGeolocation = AlgoliaGeolocation(
          lat: userModel.geoLocation.latitude,
          lng: userModel.geoLocation.longitude,
        );
        barterModel.geoHash = userModel.geoHash;
        barterModel.address = userModel.address;

        await firestore
            .collection(FirestoreCollectionNames.barterItemsCollection)
            .doc(barterModel.itemId)
            .update(barterModel.toJson());
      }
    }
  }
}
