import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterItemRepository {
  Future<void> createUserBarterItem({@required BarterModel barterModel});

  Future<void> updateUserBarterItem({@required BarterModel barterModel});
}

@Injectable(as: FirestoreBarterItemRepository)
@lazySingleton
class FirestoreBarterItemRepositoryImpl extends FirestoreBarterItemRepository {
  FirestoreBarterItemRepositoryImpl({@required this.firestore});

  final Firestore firestore;

  /// Create a barter item in User's barter items collection using [barterModel.itemId].
  @override
  Future<void> createUserBarterItem({BarterModel barterModel}) async {
    final userBarterItemsCollection = FirestoreCollectionNames()
        .getUserBarterItemsCollection(barterModel.userId);

    firestore
        .collection(userBarterItemsCollection)
        .document(barterModel.itemId)
        .setData(barterModel.toJson());
  }

  /// Update a barter item in User's barter items collection using [barterModel.itemId].
  @override
  Future<void> updateUserBarterItem({BarterModel barterModel}) async {
    final userBarterItemsCollection = FirestoreCollectionNames()
        .getUserBarterItemsCollection(barterModel.userId);

    firestore
        .collection(userBarterItemsCollection)
        .document(barterModel.itemId)
        .setData(barterModel.toJson());
  }
}
