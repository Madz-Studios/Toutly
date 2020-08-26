import 'dart:io';

import 'package:Toutly/core/cubits/barter_item/current_user/list/all/all_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'make_offer_barter_item.dart';

class MakeOfferBarterItemList extends StatelessWidget {
  final _navCubit = getIt<NavigationCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return SafeArea(
      child: Container(
        child: BlocBuilder<AllListBarterModelCurrentUserCubit,
            AllListBarterModelCurrentUserState>(
          builder: (context, allListBarterModelCurrentUserState) {
            return StreamBuilder(
              stream: allListBarterModelCurrentUserState.userBarterItems,
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
                  for (final document in querySnapshot.docs) {
                    BarterModel barterModel =
                        BarterModel.fromJson(document.data());
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
                            title: 'Create an item',
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).pop();
                              Navigator.pop(context);
                              Navigator.pop(context);

                              _navCubit.goToPostScreen();
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    return BlocBuilder<MakeOfferCubit, MakeOfferState>(
                      builder: (_, state) {
                        return Padding(
                          padding: EdgeInsets.all(
                            appSizeConfig.blockSizeHorizontal * 4,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Center(
                                child: Text(
                                  '${state.pickedBarterItems.length} item picked',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),
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
                                      child: MakeOfferBarterItem(barterModel),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: appSizeConfig.blockSizeVertical * 4,
                              ),
                            ],
                          ),
                        );
                      },
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
