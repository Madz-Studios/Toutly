class FirestoreCollectionNames {
  ///
  ///Firebase collection names
  ///

  static String barterMessagesCollection = 'barter_messages';

  static String barterTransactionCollection = 'barter_transaction';
  static String barterItemsCollection = 'barter_items';
  static String userCollection = 'user';

  static String getUserBarterInboxCollection(
      String userId, String transactionId) {
    return "$userCollection/$userId/$barterMessagesCollection/$transactionId";
  }

  static String getUserBarterTransactionCollection(String userId) {
    return "$userCollection/$userId/$barterTransactionCollection";
  }
}
