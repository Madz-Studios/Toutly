import 'dart:io';

import 'package:Toutly/core/cubits/barter_item/current_user/list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'trade_barter_item.dart';

class TradeBarterItemList extends StatelessWidget {
  final _navBloc = getIt<NavigationBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return SafeArea(
      child: Container(
        child: BlocBuilder<ListBarterModelCurrentUserCubit,
            ListBarterModelCurrentUserState>(
          builder: (context, barterState) {
            return StreamBuilder(
              stream: barterState.userBarterItems,
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
                    BarterModel barterModel =
                        BarterModel.fromJson(document.data);
                    userBarterItems.add(barterModel);
                  }

                  if (userBarterItems.isEmpty) {
                    return Padding(
                      padding: EdgeInsets.all(
                        appSizeConfig.blockSizeHorizontal * 4,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              'Please upload first your item to make a trade.',
                            ),
                          ),
                          ActionButton(
                            title: 'Continue',
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).pop();
                              Navigator.pop(context);
                              Navigator.pop(context);

                              _navBloc
                                  .add(NavigationEvent.goToPostScreenEvent());
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.all(
                        appSizeConfig.blockSizeHorizontal * 4,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: GridView.builder(
                              itemCount: userBarterItems.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing:
                                    appSizeConfig.blockSizeHorizontal * 1.5,
                                mainAxisSpacing:
                                    appSizeConfig.blockSizeVertical * 1.5,
                              ),
                              itemBuilder: (context, index) {
                                final barterModel = userBarterItems[index];
                                return GridTile(
                                  child: TradeBarterItem(barterModel),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: appSizeConfig.blockSizeVertical * 4,
                          ),
                          ActionButton(
                            title: 'Continue',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  }
                }
              },
            );
          },
        ),
      ),
    );
  }
}
