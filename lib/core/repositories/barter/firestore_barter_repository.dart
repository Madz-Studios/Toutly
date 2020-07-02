import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterRepository {
  Future<void> createBarterMarketItem({@required BarterModel barterModel});

  Future<void> updateBarterItem({@required BarterModel barterModel});
}

@Injectable(as: FirestoreBarterRepository)
@lazySingleton
class FirestoreBarterRepositoryImpl extends FirestoreBarterRepository {
  FirestoreBarterRepositoryImpl({@required this.firestore});

  final Firestore firestore;

  /// Create a barter item in barter firestore collection.
  @override
  Future<void> createBarterMarketItem({BarterModel barterModel}) async {
    final String barterCollection = FirestoreCollectionNames.barterCollection;

    await firestore
        .collection(barterCollection)
        .document(barterModel.itemId)
        .setData(barterModel.toJson());
  }

  /// Update a barter item in barter firestore collection.
  @override
  Future<void> updateBarterItem({BarterModel barterModel}) async {
    final String barterCollection = FirestoreCollectionNames.barterCollection;

    await firestore
        .collection(barterCollection)
        .document(barterModel.itemId)
        .updateData(barterModel.toJson());
  }
}
