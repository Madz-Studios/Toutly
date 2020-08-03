import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/trade_offer/bloc/trade_offer_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TradeBarterItem extends StatefulWidget {
  final BarterModel barterModel;
  TradeBarterItem(
    this.barterModel,
  );

  @override
  _TradeBarterItemState createState() => _TradeBarterItemState();
}

class _TradeBarterItemState extends State<TradeBarterItem> {
  final _tradeOfferBloc = getIt<TradeOfferBloc>();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TradeOfferBloc, TradeOfferState>(
      builder: (context, state) {
        isSelected =
            state.pickedBarterItems.containsKey(widget.barterModel.itemId);
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: widget.barterModel.photosUrl[0],
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => Container(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        widget.barterModel.publicAccess
                            ? Icons.public
                            : Icons.lock,
                        color: kPrimaryColor,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        child: isSelected
                            ? Icon(
                                Icons.check_box,
                                color: kPrimaryColor,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                color: kPrimaryColor,
                              ),
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });

                          if (isSelected) {
                            _tradeOfferBloc.add(
                              TradeOfferEvent.addItemToTrade(
                                  widget.barterModel),
                            );
                          } else {
                            _tradeOfferBloc.add(
                              TradeOfferEvent.removeItemToTrade(
                                  widget.barterModel),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: Text(
                    "${widget.barterModel.title}",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
