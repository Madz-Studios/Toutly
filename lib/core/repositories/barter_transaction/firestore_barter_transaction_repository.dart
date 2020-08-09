import 'package:Toutly/core/models/barter_transaction/barter_transaction_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreBarterTransactionRepository {
  Future<String> createBarterTransaction(
      BarterTransactionModel barterTransactionModel);

  Future<List<BarterTransactionModel>>
      getFutureAllBarterTransactionUsingTransactionId(String transactionId);
}

@Injectable(as: FirestoreBarterTransactionRepository)
@lazySingleton
class FirestoreBarterTransactionRepositoryImpl
    extends FirestoreBarterTransactionRepository {
  FirestoreBarterTransactionRepositoryImpl({
    @required this.firestore,
  });

  final Firestore firestore;

  @override
  Future<String> createBarterTransaction(
      BarterTransactionModel barterTransactionModel) async {
    final String barterTransaction =
        FirestoreCollectionNames.barterTransactionCollection;

    final docRef = await firestore
        .collection(barterTransaction)
        .add(barterTransactionModel.toJson());

    return docRef.documentID;
  }

  @override
  Future<List<BarterTransactionModel>>
      getFutureAllBarterTransactionUsingTransactionId(
          String transactionId) async {
    return null;
  }
}
