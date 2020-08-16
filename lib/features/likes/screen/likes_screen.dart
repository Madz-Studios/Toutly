import 'dart:io';

import 'package:Toutly/core/cubits/likes/current_user/likes_current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/user_barter_listing/widgets/user_barter_item.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikesScreen extends StatelessWidget {
  final _otherUserCubit = getIt<OtherUserCubit>();

  final _likesCurrentUserCubit = getIt<LikesCurrentUserCubit>();

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
            if (currentUserState.isSuccess) {
              final currentUser = currentUserState.currentUserModel;
              _likesCurrentUserCubit.getCurrentUserLikesBarterItems(
                  currentUser.barterLikesList ?? []);

              return BlocBuilder<LikesCurrentUserCubit, LikesCurrentUserState>(
                builder: (context, likesCurrentUserState) {
                  if (likesCurrentUserState.isSuccess) {
                    return FutureBuilder(
                      future: likesCurrentUserState.listings,
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
                          } else {
                            return GridView.builder(
                              itemCount: snapshot.data.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                                    onItemTapped(barterModel, context);
                                  },
                                  child: GridTile(
                                    child: UserBarterItem(barterModel),
                                  ),
                                );
                              },
                            );
                          }
                        }
                      },
                    );
                  } else if (likesCurrentUserState.isFailure) {
                    return Center(
                      child: Text(
                        'Error: ${currentUserState.info}',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              );
            } else {
              if (Platform.isIOS) {
                return Center(
                  child: CupertinoActivityIndicator(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          },
        ),
      ),
    );
  }

  void onItemTapped(barterModel, BuildContext context) {
    _otherUserCubit.getOtherUser(barterModel.userId);

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
