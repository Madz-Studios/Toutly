import 'package:Toutly/core/cubits/saved/current_user/saved_barter_items_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/user_barter_listing/widgets/user_barter_item.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedScreen extends StatelessWidget {
  final _savedBarterItemCubit = getIt<SavedBarterItemCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appSizeConfig.blockSizeVertical * 1.5,
          horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
        ),
        child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
          builder: (_, currentUserState) {
            final currentUser = currentUserState.currentUserModel;
            _savedBarterItemCubit.getCurrentUserLikesBarterItems(
                currentUser.barterLikesList ?? []);

            return BlocBuilder<SavedBarterItemCubit, SavedBarterItemsState>(
              builder: (context, savedBarterItemsState) {
                if (savedBarterItemsState.isSuccess) {
                  if (savedBarterItemsState.listings.length == 0) {
                    return Center(
                      child: Text(
                        'You have no items here.',
                      ),
                    );
                  }
                  return GridView.builder(
                    itemCount: savedBarterItemsState.listings.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: appSizeConfig.blockSizeHorizontal * 1.5,
                      mainAxisSpacing: appSizeConfig.blockSizeVertical * 1.5,
                    ),
                    itemBuilder: (context, index) {
                      final barterModel = savedBarterItemsState.listings[index];
                      return GestureDetector(
                        onTap: () {
                          onItemTapped(barterModel, context);
                        },
                        child: GridTile(
                          child: UserBarterItem(barterModel),
                        ),
                      );
                    },
                  );
                }
                return LoadingOrErrorWidgetUtil(savedBarterItemsState.info);
              },
            );
          },
        ),
      ),
    );
  }

  void onItemTapped(barterModel, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewBarterItemScreen(
          barterModel: barterModel,
          isDialog: true,
        ),
        fullscreenDialog: true,
      ),
    );
  }
}
