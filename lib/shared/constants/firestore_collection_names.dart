class FirestoreCollectionNames {
  ///
  ///Firebase collection names
  ///

  static String auctionItemsCollection = 'auction_items';
  static String barterItemsCollection = 'barter_items';
  static String offerBarterCollection = 'offer_barter';
  static String barterMessagesCollection = 'barter_messages';
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
