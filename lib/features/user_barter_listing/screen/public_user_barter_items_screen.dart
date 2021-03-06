import 'package:Toutly/core/cubits/barter_item/current_user/list/public/public_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/user_barter_listing/widgets/user_barter_item.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PublicUserBarterItemsScreen extends StatefulWidget {
  final String userId;
  PublicUserBarterItemsScreen(this.userId);
  @override
  _PublicUserBarterItemsScreenState createState() =>
      _PublicUserBarterItemsScreenState();
}

class _PublicUserBarterItemsScreenState
    extends State<PublicUserBarterItemsScreen> {
  final _publicBarterCubit = getIt<PublicListBarterModelCurrentUserCubit>();
  Stream<QuerySnapshot> _publicItemsStream;
  @override
  void initState() {
    super.initState();
    getCurrentUserPublicBarterItemsCall();
    _publicBarterCubit.getCurrentUserPublicBarterItems(widget.userId ?? '');
    _publicItemsStream = _publicBarterCubit.state.userBarterItems;
  }

  getCurrentUserPublicBarterItemsCall() async {
    await _publicBarterCubit
        .getCurrentUserPublicBarterItems(widget.userId ?? '');
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
    return StreamBuilder<QuerySnapshot>(
      stream: _publicItemsStream,
      builder: (_, snapshot) {
        debugPrint(
            "PublicUserBarterItemsScreen Snapshot " + snapshot.toString());
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
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
