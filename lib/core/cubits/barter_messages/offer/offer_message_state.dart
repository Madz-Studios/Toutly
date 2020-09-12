// part of 'offer_message_cubit.dart';
//
// @freezed
// abstract class OfferMessageState with _$OfferMessageState {
//   const factory OfferMessageState({
//     @required Stream<QuerySnapshot> offerMessages,
//     @required bool isSubmitting,
//     @required bool isSuccess,
//     @required bool isFailure,
//     @required String info,
//   }) = _OfferMessageState;
//
//   factory OfferMessageState.empty() => OfferMessageState(
//         offerMessages: Stream.empty(),
//         isSubmitting: false,
//         isSuccess: false,
//         isFailure: false,
//         info: '',
//       );
//
//   factory OfferMessageState.loading() => OfferMessageState(
//         offerMessages: Stream.empty(),
//         isSubmitting: true,
//         isSuccess: false,
//         isFailure: false,
//         info: '',
//       );
//
//   factory OfferMessageState.failure({String info}) => OfferMessageState(
//         offerMessages: Stream.empty(),
//         isSubmitting: false,
//         isSuccess: false,
//         isFailure: true,
//         info: info,
//       );
//
//   factory OfferMessageState.success(
//           {Stream<QuerySnapshot> offerMessages, String info}) =>
//       OfferMessageState(
//         offerMessages: offerMessages,
//         isSubmitting: false,
//         isSuccess: true,
//         isFailure: false,
//         info: info,
//       );
// }
