import 'package:Toutly/core/models/user/fcm_token/fcm_token_model.dart';
import 'package:Toutly/core/models/user/saved_items/saved_item_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/constants/firestore_collection_names.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreUserRepository {
  Future<void> createUser(UserModel user);
  Future<UserModel> getUserUsingUserId(String userId);
  Future<void> updateUserUsingUserModel(UserModel user);
  Future<List<FcmTokenModel>> getTokensUsingUserId(String userId);

  Future<void> createSavedItem(UserModel user, SavedItemModel savedItemModel);

  Future<void> deleteSavedItem(UserModel user, SavedItemModel savedItemModel);

  Future<List<SavedItemModel>> getAllSavedItem(UserModel user);
}

@Injectable(as: FirestoreUserRepository)
@lazySingleton
class FirestoreUserRepositoryImpl extends FirestoreUserRepository {
  final FirebaseFirestore firestore;

  FirestoreUserRepositoryImpl(
    this.firestore,
  );
  @override
  Future<void> createUser(UserModel user) async {
    await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .doc(user.userId)
        .set(user.toJson());
  }

  @override
  Future<UserModel> getUserUsingUserId(String userId) async {
    final userData = await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .doc(userId)
        .get();
    if (userData.exists) {
      UserModel user = UserModel.fromJson(userData.data());
      final allSavedItem = await getAllSavedItem(user);

      user.saveItems = allSavedItem;

      return user;
    }
    return null;
  }

  @override
  Future<List<FcmTokenModel>> getTokensUsingUserId(String userId) async {
    List<FcmTokenModel> listFcmTokenModel = [];

    final tokensData = await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .doc(userId)
        .collection(FirestoreCollectionNames.fcmTokenCollection)
        .get();

    if (tokensData.docs.isNotEmpty) {
      for (final token in tokensData.docs) {
        final FcmTokenModel tokenModel = FcmTokenModel.fromJson(token.data());

        listFcmTokenModel.add(tokenModel);
      }
    }

    return listFcmTokenModel;
  }

  @override
  Future<void> updateUserUsingUserModel(UserModel user) async {
    await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .doc(user.userId)
        .update(user.toJson());
  }

  @override
  Future<void> createSavedItem(
      UserModel user, SavedItemModel savedItemModel) async {
    await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .doc(user.userId)
        .collection(FirestoreCollectionNames.userLikesCollection)
        .doc(savedItemModel.itemId)
        .set(savedItemModel.toJson());
  }

  @override
  Future<void> deleteSavedItem(
      UserModel user, SavedItemModel savedItemModel) async {
    await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .doc(user.userId)
        .collection(FirestoreCollectionNames.userLikesCollection)
        .doc(savedItemModel.itemId)
        .delete();
  }

  @override
  Future<List<SavedItemModel>> getAllSavedItem(UserModel user) async {
    List<SavedItemModel> listSavedItems = [];
    final savedItems = await firestore
        .collection(FirestoreCollectionNames.userCollection)
        .doc(user.userId)
        .collection(FirestoreCollectionNames.userLikesCollection)
        .get();

    if (savedItems.docs.isNotEmpty) {
      for (final item in savedItems.docs) {
        final savedItemModel = SavedItemModel.fromJson(item.data());

        listSavedItems.add(savedItemModel);
      }
    }
    return listSavedItems;
  }
}
