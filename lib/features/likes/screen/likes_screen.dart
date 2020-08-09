import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/user_barter_listing/widgets/user_barter_item.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/bloc/likes/likes_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikesScreen extends StatelessWidget {
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();

  final _likesBloc = getIt<LikesBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appSizeConfig.blockSizeVertical * 1.5,
          horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
        ),
        child: BlocConsumer<UserBloc, UserState>(
          listener: (_, userState) {
            if (userState.isSubmitting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          builder: (_, userState) {
            _likesBloc.add(
              LikesEvent.getAllUserFavouriteBarterItems(
                  userState.userModel.barterLikesList ?? []),
            );
            return BlocBuilder<LikesBloc, LikesState>(
              builder: (context, likesState) {
                return FutureBuilder(
                  future: likesState.userFavouriteBarterItems,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      if (Platform.isIOS) {
                        return Center(
                          child: CupertinoActivityIndicator(),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'Error: ${snapshot.error}',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      );
                    } else {
                      if (snapshot.data.length == 0) {
                        return Center(
                          child: Text(
                            'You have no items here.',
                          ),
                        );
                      }
                      return GridView.builder(
                        itemCount: snapshot.data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing:
                              appSizeConfig.blockSizeHorizontal * 1.5,
                          mainAxisSpacing:
                              appSizeConfig.blockSizeVertical * 1.5,
                        ),
                        itemBuilder: (context, index) {
                          final barterModel = snapshot.data[index];
                          return GestureDetector(
                            onTap: () {
                              _viewBarterItemBloc.add(
                                ViewBarterItemEvent.viewBarterItem(barterModel),
                              );

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ViewBarterItemScreen(
                                    isDialog: true,
                                    barterUser: userState.userModel,
                                  ),
                                  fullscreenDialog: true,
                                ),
                              );
                            },
                            child: GridTile(
                              child: UserBarterItem(barterModel),
                            ),
                          );
                        },
                      );
                    }
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
