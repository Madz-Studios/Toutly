import 'package:Toutly/core/cubits/barter_messages/offer/items/offer_items_cubit.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OfferItemCard extends StatelessWidget {
  final List<String> offerItems;

  OfferItemCard({@required this.offerItems});

  @override
  Widget build(BuildContext context) {
//    _offerItemCubit.getOfferItems(offerItems);
    final appSizeConfig = AppSizeConfig(context);
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appSizeConfig.blockSizeVertical * 1.5,
          horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
        ),
        child: BlocBuilder<OfferItemsCubit, OfferItemsState>(
          builder: (context, offerItemsState) {
            if (offerItemsState.isSuccess) {
              List<Widget> offeredItems = [];
              for (BarterModel barterModel in offerItemsState.offerItems) {
                offeredItems.add(
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewBarterItemScreen(
                            barterModel: barterModel,
                            isDialog: false,
                            showMakeOfferButton: false,
                          ),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Flexible(
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
                                image: NetworkImage(
                                  barterModel.photosUrl[0],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: appSizeConfig.blockSizeVertical * 1.0,
                              horizontal:
                                  appSizeConfig.blockSizeHorizontal * 1.5,
                            ),
                            child: Container(
                              height: appSizeConfig.blockSizeVertical * 7.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    '${barterModel.title}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height:
                                        appSizeConfig.blockSizeVertical * 0.5,
                                  ),
                                  Text(
                                    '${barterModel.title}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height:
                                        appSizeConfig.blockSizeVertical * 0.5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return Column(
                children: offeredItems,
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
