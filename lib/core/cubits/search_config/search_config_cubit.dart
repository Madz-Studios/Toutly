import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_config_cubit.freezed.dart';
part 'search_config_state.dart';

@lazySingleton
class SearchConfigCubit extends Cubit<SearchConfigState> {
  SearchConfigCubit() : super(SearchConfigState.empty());

  setConfig({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required bool isNoLimitRange,
    @required double range,
  }) {
    emit(SearchConfigState.loading());

    emit(
      SearchConfigState.success(
          searchText: searchText,
          category: category,
          postedWithin: postedWithin,
          range: range,
          isNoLimitRange: isNoLimitRange,
          info: 'Success'),
    );
  }

  updateSearchText(String searchText) {
    emit(state.copyWith(
      searchText: searchText,
    ));
  }

  updateCategory(String category) {
    emit(state.copyWith(
      category: category,
    ));
  }

  updatePostedWithin(String postedWithin) {
    emit(state.copyWith(
      postedWithin: postedWithin,
    ));
  }

  updateRange(double range) {
    emit(state.copyWith(
      range: range,
    ));
  }
}
