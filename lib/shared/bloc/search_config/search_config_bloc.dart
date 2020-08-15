//import 'package:bloc/bloc.dart';
//import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:injectable/injectable.dart';
//
//part 'search_config_bloc.freezed.dart';
//part 'search_config_event.dart';
//part 'search_config_state.dart';
//
//@lazySingleton
//class SearchConfigBloc extends Bloc<SearchConfigEvent, SearchConfigState> {
//  SearchConfigBloc() : super(SearchConfigState.init());
//
//  @override
//  Stream<SearchConfigState> mapEventToState(SearchConfigEvent event) async* {
//    yield* event.map(
//      init: (e) async* {},
//      setConfig: (e) async* {
//        yield SearchConfigState.setConfigData(
//          searchText: e.searchText,
//          category: e.category,
//          postedWithin: e.postedWithin,
//          latitude: e.latitude,
//          longitude: e.longitude,
//        );
//      },
//      clearSearchText: (e) async* {
//        yield state.copyWith(
//          searchText: '',
//        );
//      },
//    );
//  }
//}
