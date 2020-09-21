part of '../screen/home_screen.dart';

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false, // Don't show the leading button
      titleSpacing: 0,
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: appSizeConfig.safeBlockHorizontal * 5,
        ),
        child: BlocBuilder<SearchConfigCubit, SearchConfigState>(
          builder: (_, searchConfigState) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _SearchTextField(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: appSizeConfig.safeBlockHorizontal * 2.5,
                  ),
                  child: GestureDetector(
                    child: SvgPicture.asset(
                      'assets/images/filter.svg',
                      height: appSizeConfig.blockSizeVertical * 3,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchFilterScreen(
                            searchText: searchConfigState.searchText,
                            category: searchConfigState.category,
                            postedWithin: searchConfigState.postedWithin,
                            range: searchConfigState.range,
                            isNoLimitRange: searchConfigState.isNoLimitRange,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
