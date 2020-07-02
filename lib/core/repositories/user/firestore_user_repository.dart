import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreUserRepository {
  Future<void> createUser(UserModel user);
  Future<UserModel> getUserUsingUid(String id);
}

@Injectable(as: FirestoreUserRepository)
@lazySingleton
class FirestoreUserRepositoryImpl extends FirestoreUserRepository {
  final Firestore firestore;

  FirestoreUserRepositoryImpl({@required this.firestore});
  @override
  Future<void> createUser(UserModel user) async {
    await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .document(user.userId)
        .setData(user.toJson());
  }

  @override
  Future<UserModel> getUserUsingUid(String userId) async {
    final userData = await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .document(userId)
        .get();
    if (userData.exists) {
      return UserModel.fromJson(userData.data);
    }
    return null;
  }
}
