import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterRepository {
  Future<void> createBarterMarketItem({@required BarterModel barterModel});

  Future<List<BarterModel>> getAllBarterItemsUsingUserId(
      {@required String userId});

  Future<void> updateBarterItem({@required BarterModel barterModel});
}

@Injectable(as: FirestoreBarterRepository)
@lazySingleton
class FirestoreBarterRepositoryImpl extends FirestoreBarterRepository {
  FirestoreBarterRepositoryImpl({@required this.firestore});

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

  /// Get a barter item in barter firestore collection using [userId].
  @override
  Future<List<BarterModel>> getAllBarterItemsUsingUserId(
      {String userId}) async {
    final String barterCollection = FirestoreCollectionNames.barterCollection;

    final snapshot = await firestore
        .collection(barterCollection)
        .where('userId', isEqualTo: userId)
        .getDocuments();

    List<BarterModel> userBarterItems = List<BarterModel>();

    snapshot.documents.forEach((result) {
      print(result.data);
      final barterModel = BarterModel.fromJson(result.data);
      userBarterItems.add(barterModel);
    });

    return userBarterItems;
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
