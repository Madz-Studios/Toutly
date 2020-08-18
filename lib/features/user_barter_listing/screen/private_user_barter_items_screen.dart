import 'package:Toutly/core/cubits/barter_item/current_user/list/private/private_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/user_barter_listing/widgets/user_barter_item.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrivateUserBarterItemsScreen extends StatefulWidget {
  final String userId;
  PrivateUserBarterItemsScreen(this.userId);
  @override
  _PrivateUserBarterItemsScreenState createState() =>
      _PrivateUserBarterItemsScreenState();
}

class _PrivateUserBarterItemsScreenState
    extends State<PrivateUserBarterItemsScreen> {
  final _privateBarterCubit = getIt<PrivateListBarterModelCurrentUserCubit>();

  @override
  void initState() {
    super.initState();
    _privateBarterCubit.getCurrentUserPrivateBarterItems(widget.userId);
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
        child: _buildUserBarterItems(appSizeConfig),
      ),
    );
  }

  Widget _buildUserBarterItems(AppSizeConfig appSizeConfig) {
    return BlocBuilder<PrivateListBarterModelCurrentUserCubit,
        PrivateListBarterModelCurrentUserState>(
      builder: (_, privateListBarterModelCurrentUserState) {
        if (privateListBarterModelCurrentUserState.isSuccess) {
          return StreamBuilder<QuerySnapshot>(
            stream: privateListBarterModelCurrentUserState.userBarterItems,
            builder: (_, snapshot) {
              debugPrint("PrivateUserBarterItemsScreen Snapshot " +
                  snapshot.toString());
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return LoadingOrErrorWidgetUtil('');
                case ConnectionState.done:
                  if (snapshot.hasError)
                    return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
                  else {
                    return _buildUserBarterItemsView(snapshot, appSizeConfig);
                  }
                  break;
                default:
                  if (snapshot.hasError)
                    return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
                  else {
                    return _buildUserBarterItemsView(snapshot, appSizeConfig);
                  }
              }
            },
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildUserBarterItemsView(
      AsyncSnapshot<QuerySnapshot> snapshot, AppSizeConfig appSizeConfig) {
    if (snapshot.data != null && snapshot.data.docs.isNotEmpty) {
      List<BarterModel> userBarterItems = [];
      for (final document in snapshot.data.docs) {
        BarterModel barterModel = BarterModel.fromJson(document.data());
        userBarterItems.add(barterModel);
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
            },
            child: GridTile(
              child: UserBarterItem(barterModel),
            ),
          );
        },
      );
    } else {
      return Center(
        child: Text(
          'You have no items here.',
        ),
      );
    }
  }
}
