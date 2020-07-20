import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/bloc/barter/barter_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'trade_barter_item.dart';

class TradeBarterItemList extends StatefulWidget {
  TradeBarterItemList();

  @override
  _TradeBarterItemListState createState() => _TradeBarterItemListState();
}

class _TradeBarterItemListState extends State<TradeBarterItemList> {
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
    return SafeArea(
      child: Container(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return FutureBuilder(
              future:
                  _barterBloc.getUserBarterItems(state.userModel?.userId ?? ''),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Padding(
                      padding: EdgeInsets.all(
                        appSizeConfig.blockSizeHorizontal * 4,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text('Empty'),
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
                  return Padding(
                    padding: EdgeInsets.all(
                      appSizeConfig.blockSizeHorizontal * 4,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: GridView.builder(
                            itemCount: snapshot.data.documents.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing:
                                  appSizeConfig.blockSizeHorizontal * 1.5,
                              mainAxisSpacing:
                                  appSizeConfig.blockSizeVertical * 1.5,
                            ),
                            itemBuilder: (context, index) {
                              final barterModel = BarterModel.fromJson(
                                snapshot.data.documents[index].data,
                              );
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
              },
            );
          },
        ),
      ),
    );
  }
}
