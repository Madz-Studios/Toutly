part of 'search_config_cubit.dart';

@freezed
abstract class SearchConfigState with _$SearchConfigState {
  const factory SearchConfigState({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double range,
    @required bool isNoLimitRange,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    String info,
  }) = _SearchConfigState;

  factory SearchConfigState.empty() => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        range: 0.0,
        isNoLimitRange: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchConfigState.loading() => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        range: 0.0,
        isNoLimitRange: false,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SearchConfigState.failure(String info) => SearchConfigState(
        searchText: '',
        category: '',
        postedWithin: '',
        range: 0.0,
        isNoLimitRange: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory SearchConfigState.success({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double range,
    @required bool isNoLimitRange,
    @required String info,
  }) =>
      SearchConfigState(
        searchText: searchText,
        category: category,
        postedWithin: postedWithin,
        range: range,
        isNoLimitRange: isNoLimitRange,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
