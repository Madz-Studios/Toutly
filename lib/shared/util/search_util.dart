import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:flutter/foundation.dart';

class SearchUtil {
  final _searchCubit = getIt<SearchCubit>();

  void searchSubmit({
    @required String searchText,
    @required String category,
    @required String postedWithin,
    @required double range,
    @required bool isNoLimitRange,
  }) {
    debugPrint(
        '''SearchUtil _searchSubmit searchText = $searchText  category = $category  '
        postedWithin = $postedWithin''');

    _searchCubit.search(
      searchText: searchText,
      category: category,
      postedWithin: postedWithin,
      range: range,
      isNoLimitRange: isNoLimitRange,
    );
  }
}
