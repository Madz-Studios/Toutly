import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewBarterItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<ViewBarterItemBloc, ViewBarterItemState>(
      builder: (context, state) => state.map(
        initial: (e) {
          return Container();
        },
        loadBarterItem: (e) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: e.barterModel.photosUrl[0],
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) => Placeholder(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              print('Close');
//                            _navBloc.add(NavigationEvent
//                                .goToUserBarterListingScreenEvent());
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              print('Delete');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: appSizeConfig.blockSizeVertical * 1.5,
                        horizontal: appSizeConfig.blockSizeHorizontal * 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.barterModel.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: kPrimaryColor,
                                ),
                                onPressed: () {
                                  print('Edit');
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: appSizeConfig.blockSizeVertical * 1.5,
                          ),
                          Text(
                            e.barterModel.description,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: appSizeConfig.blockSizeVertical * 1.5,
                          ),
                          Text(
                            'Preferred Item',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            height: appSizeConfig.blockSizeVertical * 1.5,
                          ),
                          Text(e.barterModel.preferredItem),
                          SizedBox(
                            height: appSizeConfig.blockSizeVertical * 1.5,
                          ),
                          Text(
                            'Location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            height: appSizeConfig.blockSizeVertical * 1.5,
                          ),
                          Text(e.barterModel.address),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
