import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeOfferBarterItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<SingleBarterItemOtherUserCubit,
        SingleBarterItemOtherUserState>(
      builder: (_, singleBarterItemOtherUserState) {
        if (singleBarterItemOtherUserState.isSuccess) {
          final otherUserBarterModel =
              singleBarterItemOtherUserState.otherUserBarterItem;
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: appSizeConfig.blockSizeVertical * 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                        image: DecorationImage(
                          image:
                              NetworkImage(otherUserBarterModel.photosUrl[0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: _BarterItemDescription(
                      title: otherUserBarterModel.title,
                      description: otherUserBarterModel.description,
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}

class _BarterItemDescription extends StatelessWidget {
  const _BarterItemDescription({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Padding(
      padding: EdgeInsets.all(
        appSizeConfig.blockSizeHorizontal * 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: appSizeConfig.blockSizeVertical * 1,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 12.0),
          ),
          SizedBox(
            height: appSizeConfig.blockSizeVertical * 1,
          )
        ],
      ),
    );
  }
}
