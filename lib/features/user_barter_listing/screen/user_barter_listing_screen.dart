import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/user_barter_listing/widgets/user_barter_item.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/bloc/barter/barter_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBarterListingScreen extends StatefulWidget {
  @override
  _UserBarterListingScreenState createState() =>
      _UserBarterListingScreenState();
}

class _UserBarterListingScreenState extends State<UserBarterListingScreen> {
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();

  final _barterBloc = getIt<BarterBloc>();

  final _userBloc = getIt<UserBloc>();

  @override
  void initState() {
    super.initState();

    _userBloc.add(UserEvent.getCurrentLoggedInUser());
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appSizeConfig.blockSizeVertical * 1.5,
          horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
        ),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return StreamBuilder(
              stream:
                  _barterBloc.getUserBarterItems(state.userModel?.userId ?? ''),
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
                  return GridView.builder(
                    itemCount: snapshot.data.documents.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: appSizeConfig.blockSizeHorizontal * 1.5,
                      mainAxisSpacing: appSizeConfig.blockSizeVertical * 1.5,
                    ),
                    itemBuilder: (context, index) {
                      final barterModel = BarterModel.fromJson(
                        snapshot.data.documents[index].data,
                      );
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
                                barterUser: state.userModel,
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
        ),
      ),
    );
  }
}
