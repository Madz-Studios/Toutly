import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/privacy_services/privacy_services_cubit.dart';
import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/search_filter/screen/search_filter_screen.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/profile_with_rating.dart';
import 'package:algolia/algolia.dart';
import 'package:app_settings/app_settings.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part '../widgets/barter_description.dart';
part '../widgets/barter_item.dart';
part '../widgets/barter_item_feed.dart';
part '../widgets/search_bar.dart';
part '../widgets/search_textfield.dart';

class HomeScreen extends StatelessWidget {
  final SearchConfigCubit _searchConfigCubit = getIt<SearchConfigCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          appSizeConfig.blockSizeVertical * 8.5,
        ),
        child: _SearchBar(),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          // Touch and fold the keyboard
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (_, searchState) {
            if (searchState.isSuccess) {
              ///if search text field is empty and no limit is checked
              if (_searchConfigCubit.state.searchText.isEmpty &&
                  _searchConfigCubit.state.isNoLimitRange) {
                List<BarterModel> listBarterModels =
                    searchState.listBarterModels;

                if (listBarterModels.isEmpty) {
                  return Center(
                    child: Text(
                      'There is no items being bartered in your area.',
                    ),
                  );
                } else {
                  return _BarterItemFeed(
                    listBarterModels: listBarterModels,
                  );
                }
              } else {
                AlgoliaQuerySnapshot algoliaQuerySnapshot =
                    searchState.algoliaQuerySnapshot;

                if (algoliaQuerySnapshot.empty) {
                  return Center(
                    child: Text(
                      'There is no items being bartered in your area.',
                    ),
                  );
                } else {
                  return _BarterItemFeed(
                    algoliaQuerySnapshot: algoliaQuerySnapshot,
                  );
                }
              }
            } else {
              return LoadingOrErrorWidgetUtil(searchState.info);
            }
          },
        ),
      ),
    );
  }
}
