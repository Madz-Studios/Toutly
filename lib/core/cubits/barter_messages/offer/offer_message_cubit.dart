// import 'package:Toutly/core/usecases/barter_messages/firestore_get_all_user_offer_messages_use_case.dart';
// import 'package:Toutly/core/usecases/param/barter_messages/use_case_barter_messages_param.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
//
// part 'offer_message_cubit.freezed.dart';
// part 'offer_message_state.dart';
//
// @lazySingleton
// class OfferMessageCubit extends Cubit<OfferMessageState> {
//   final FirestoreGetAllOfferMessagesUseCase firestoreGetAllOfferMessagesUseCase;
//
//   OfferMessageCubit(
//     this.firestoreGetAllOfferMessagesUseCase,
//   ) : super(OfferMessageState.empty());
//
//   getOfferMessages(String userId) async {
//     try {
//       emit(OfferMessageState.loading());
//       final offerMessages = firestoreGetAllOfferMessagesUseCase.call(
//         UseCaseAllUserMessagesWithUserIdParam.init(userId: userId),
//       );
//       emit(OfferMessageState.success(
//           offerMessages: offerMessages, info: 'Success'));
//     } on PlatformException catch (platformException) {
//       emit(OfferMessageState.failure(info: platformException.message));
//     } on Exception catch (e) {
//       emit(OfferMessageState.failure(info: e.toString()));
//     }
//   }
// }
