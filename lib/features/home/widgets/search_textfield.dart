part of '../screen/home_screen.dart';

class _SearchTextField extends StatefulWidget {
  @override
  __SearchTextFieldState createState() => __SearchTextFieldState();
}

class __SearchTextFieldState extends State<_SearchTextField> {
  final _searchController = TextEditingController();
  final _searchConfigCubit = getIt<SearchConfigCubit>();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchConfigCubit, SearchConfigState>(
      builder: (_, searchConfigState) {
        _searchController.text = searchConfigState.searchText;
        return TextField(
          controller: _searchController,
          textInputAction: TextInputAction.search,
          onSubmitted: (searchText) {
            SearchUtil().searchSubmit(
              searchText: searchText,
              category: searchConfigState.category,
              postedWithin: searchConfigState.postedWithin,
              range: searchConfigState.range,
              isNoLimitRange: searchConfigState.isNoLimitRange,
            );

            _searchConfigCubit.updateSearchText(_searchController.text);
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0XFFF7F7F8),
            hintText: 'Search',
            hintStyle: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Color(0XFFB5B5B5),
            ),
            isDense: true,
            // Added this
            contentPadding: EdgeInsets.all(8),
            // Added this
            suffixIcon: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.grey,
              ),
              onPressed: () {
                _searchController.clear();
                SearchUtil().searchSubmit(
                  searchText: '',
                  category: searchConfigState.category,
                  postedWithin: searchConfigState.postedWithin,
                  range: searchConfigState.range,
                  isNoLimitRange: searchConfigState.isNoLimitRange,
                );
                _searchConfigCubit.updateSearchText('');
              },
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
