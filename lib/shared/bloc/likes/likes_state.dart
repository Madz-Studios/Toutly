//part of 'likes_bloc.dart';
//
//@freezed
//abstract class LikesState with _$LikesState {
//  const factory LikesState({
//    @required Future<List<BarterModel>> userFavouriteBarterItems,
//    @required bool isSubmitting,
//    @required bool isSuccess,
//    @required bool isFailure,
//    @required String info,
//  }) = _LikesState;
//
//  factory LikesState.empty() => LikesState(
//        userFavouriteBarterItems: Future.value([]),
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory LikesState.loading() => LikesState(
//        userFavouriteBarterItems: Future.value([]),
//        isSubmitting: true,
//        isSuccess: false,
//        isFailure: false,
//        info: '',
//      );
//
//  factory LikesState.failure({@required String info}) => LikesState(
//        userFavouriteBarterItems: Future.value([]),
//        isSubmitting: false,
//        isSuccess: false,
//        isFailure: true,
//        info: info,
//      );
//
//  factory LikesState.success(
//          {@required Future<List<BarterModel>> userFavouriteBarterItems,
//          @required String info}) =>
//      LikesState(
//        userFavouriteBarterItems: userFavouriteBarterItems,
//        isSubmitting: false,
//        isSuccess: true,
//        isFailure: false,
//        info: info,
//      );
//}
