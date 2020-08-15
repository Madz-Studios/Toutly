import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_config_cubit.freezed.dart';
part 'search_config_state.dart';

@lazySingleton
class SearchConfigCubit extends Cubit<SearchConfigState> {
  SearchConfigCubit() : super(SearchConfigState.init());

  setConfig({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
    @required double latitude,
    @required double longitude,
  }) {
    emit(SearchConfigState.setConfigData(
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
      algoliaAppId: algoliaAppId,
      algoliaSearchApiKey: algoliaSearchApiKey,
      latitude: latitude,
      longitude: longitude,
    ));
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

  updateAlgoliaAppId(String algoliaAppId) {
    emit(state.copyWith(
      algoliaAppId: algoliaAppId,
    ));
  }

  updateAlgoliaSearchApiKey(String algoliaSearchApiKey) {
    emit(state.copyWith(
      algoliaSearchApiKey: algoliaSearchApiKey,
    ));
  }

  updateLatLng(double latitude, double longitude) {
    emit(state.copyWith(
      latitude: latitude,
      longitude: longitude,
    ));
  }

  clearSearchText() {
    emit(state.copyWith(
      searchText: '',
    ));
  }
}
