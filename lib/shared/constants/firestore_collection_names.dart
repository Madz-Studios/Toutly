class FirestoreCollectionNames {
  ///
  ///Firebase collection names
  ///

  static String auctionCollection = 'auction';
  static String barterCollection = 'barter';
  static String messagesCollection = 'messages';
  static String userCollection = 'user';

  static String userBarterInboxCollection = 'userBarterInbox';
  static String userBarterItemsCollection = 'userBarterItems';

  String getUserBarterInboxCollection(String userId) {
    return "$userCollection/$userId/$userBarterInboxCollection";
  }

  String getUserBarterItemsCollection(String userId) {
    return "$userCollection/$userId/$userBarterItemsCollection";
  }
}
