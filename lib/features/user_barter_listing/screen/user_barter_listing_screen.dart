import 'dart:io';

import 'package:Toutly/core/cubits/barter_item/current_user/list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/user_barter_listing/widgets/user_barter_item.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBarterListingScreen extends StatelessWidget {
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appSizeConfig.blockSizeVertical * 1.5,
          horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
        ),
        child: _buildUserBarterItems(appSizeConfig),
      ),
    );
  }

  Widget _buildUserBarterItems(AppSizeConfig appSizeConfig) {
    return BlocBuilder<ListBarterModelCurrentUserCubit,
        ListBarterModelCurrentUserState>(
      builder: (_, listBarterModelCurrentUserState) {
        if (listBarterModelCurrentUserState.isSuccess) {
          return StreamBuilder(
            stream: listBarterModelCurrentUserState.userBarterItems,
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
                QuerySnapshot querySnapshot = snapshot.data;

                List<BarterModel> userBarterItems = [];
                for (final document in querySnapshot.documents) {
                  BarterModel barterModel = BarterModel.fromJson(document.data);
                  userBarterItems.add(barterModel);
                }

                if (userBarterItems.length == 0) {
                  return Center(
                    child: Text(
                      'You have no items here.',
                    ),
                  );
                }
                return GridView.builder(
                  itemCount: userBarterItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: appSizeConfig.blockSizeHorizontal * 1.5,
                    mainAxisSpacing: appSizeConfig.blockSizeVertical * 1.5,
                  ),
                  itemBuilder: (context, index) {
                    final barterModel = userBarterItems[index];
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
        } else {
          return Container();
        }
      },
    );
  }
}
