// import 'package:Toutly/core/cubits/barter_messages/barter/items/barter_items_cubit.dart';
// import 'package:Toutly/core/cubits/barter_messages/conversation/conversation_cubit.dart';
// import 'package:Toutly/core/cubits/barter_messages/offer/items/offer_items_cubit.dart';
// import 'package:Toutly/core/cubits/barter_messages/offer/offer_message_cubit.dart';
// import 'package:Toutly/core/cubits/notification/notification_cubit.dart';
// import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
// import 'package:Toutly/core/di/injector.dart';
// import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
// import 'package:Toutly/core/models/user/user_model.dart';
// import 'package:Toutly/features/conversation/screen/conversation_offer_screen.dart';
// import 'package:Toutly/shared/constants/app_constants.dart';
// import 'package:Toutly/shared/util/app_size_config.dart';
// import 'package:Toutly/shared/util/error_util.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class OfferMessagesTab extends StatelessWidget {
//   OfferMessagesTab(this.userId);
//
//   final String userId;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<OfferMessageCubit, OfferMessageState>(
//       builder: (_, offerMessageState) {
//         return StreamBuilder<QuerySnapshot>(
//           stream: offerMessageState.offerMessages,
//           builder: (_, snapshot) {
//             debugPrint("OfferMessagesTab Snapshot " + snapshot.toString());
//             switch (snapshot.connectionState) {
//               case ConnectionState.done:
//                 if (snapshot.hasError) {
//                   debugPrint('Error: ${snapshot.error}');
//                   return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
//                 } else {
//                   return _buildMessages(snapshot);
//                 }
//                 break;
//               default:
//                 if (snapshot.hasError) {
//                   debugPrint('Error: ${snapshot.error}');
//                   return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
//                 } else {
//                   return _buildMessages(snapshot);
//                 }
//             }
//           },
//         );
//       },
//     );
//   }
//
//   Widget _buildMessages(AsyncSnapshot<QuerySnapshot> snapshot) {
//     if (snapshot.data != null && snapshot.data.docs.isNotEmpty) {
//       final messagesDocs = snapshot.data.docs;
//       List<_MessageOfferItem> messageItems = [];
//       for (final message in messagesDocs) {
//         final barterMessageModel = BarterMessageModel.fromJson(message.data());
//         messageItems.add(
//           _MessageOfferItem(barterMessageModel),
//         );
//       }
//
//       return SingleChildScrollView(
//         child: Column(
//           children: messageItems,
//         ),
//       );
//     } else {
//       return Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'You have currently no messages',
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }
//
// class _MessageOfferItem extends StatelessWidget {
//   final BarterMessageModel barterMessageModel;
//   _MessageOfferItem(this.barterMessageModel);
//
//   final _otherUserCubit = getIt<OtherUserCubit>();
//   final _barterItemCubit = getIt<BarterItemsCubit>();
//   final _offerItemCubit = getIt<OfferItemsCubit>();
//   final _notificationCubit = getIt<NotificationCubit>();
//   final _conversationCubit = getIt<ConversationCubit>();
//
//   @override
//   Widget build(BuildContext context) {
//     _barterItemCubit.getBarterItem(barterMessageModel.barterItemId);
//     _offerItemCubit.getOfferItems(barterMessageModel.barterOfferItems);
//
//     final appSizeConfig = AppSizeConfig(context);
//     return FutureBuilder(
//       future: _otherUserCubit.getOtherUser(barterMessageModel.userBarter),
//       builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {
//         debugPrint("_MessageOfferItem Snapshot " + snapshot.toString());
//         switch (snapshot.connectionState) {
//           case ConnectionState.active:
//             if (snapshot.hasError)
//               return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
//             else {
//               UserModel otherUserModel = snapshot.data;
//               return _buildOtherUserProfileMessage(
//                   context, appSizeConfig, otherUserModel);
//             }
//             break;
//           default:
//             UserModel otherUserModel = snapshot.data;
//             return _buildOtherUserProfileMessage(
//                 context, appSizeConfig, otherUserModel);
//         }
//       },
//     );
//   }
//
//   Widget _buildOtherUserProfileMessage(
//     BuildContext context,
//     AppSizeConfig appSizeConfig,
//     UserModel barterUser,
//   ) {
//     return GestureDetector(
//       onTap: () {
//         _onTappedMessageItem(context, barterUser);
//       },
//       child: Container(
//         child: Column(
//           children: [
//             if (barterUser != null)
//               Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
//                       vertical: appSizeConfig.blockSizeVertical * 2,
//                     ),
//                     child: CircleAvatar(
//                       backgroundImage: barterUser.photoUrl != null
//                           ? NetworkImage(barterUser.photoUrl ?? '')
//                           : AssetImage(
//                               'assets/images/profile_placeholder.png',
//                             ),
//                     ),
//                   ),
//                   Flexible(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Text(
//                           '${barterUser.name ?? ''}',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               '${barterMessageModel.lastMessageText ?? ''}',
//                               style: TextStyle(
//                                 fontSize: 12.0,
//                                 fontWeight:
//                                     !barterMessageModel.isReadLastMessage
//                                         ? FontWeight.bold
//                                         : FontWeight.normal,
//                               ),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             if (!barterMessageModel.isReadLastMessage)
//                               Padding(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal:
//                                       appSizeConfig.blockSizeHorizontal * 2.0,
//                                 ),
//                                 child: Icon(
//                                   Icons.fiber_manual_record,
//                                   color: kPrimaryColor,
//                                 ),
//                               )
//                             else
//                               SizedBox.shrink(),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               )
//             else
//               SizedBox.shrink(),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: appSizeConfig.blockSizeHorizontal * 5,
//               ),
//               child: Divider(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _onTappedMessageItem(BuildContext context, UserModel barterUser) {
//     debugPrint('Message item tapped');
//
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: (context) {
//         return ConversationOfferScreen(barterMessageModel, barterUser);
//       }),
//     );
//
//     _conversationCubit.messageUserOfferReadUpdate(
//       barterMessageModel: barterMessageModel,
//     );
//   }
// }
