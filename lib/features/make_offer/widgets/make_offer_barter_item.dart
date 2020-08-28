import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeOfferBarterItem extends StatefulWidget {
  final BarterModel barterModel;
  MakeOfferBarterItem(
    this.barterModel,
  );

  @override
  _MakeOfferBarterItemState createState() => _MakeOfferBarterItemState();
}

class _MakeOfferBarterItemState extends State<MakeOfferBarterItem> {
  final _makeOfferCubit = getIt<MakeOfferCubit>();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeOfferCubit, MakeOfferState>(
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
                      placeholder: (context, url) => SizedBox.shrink(),
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
                            _makeOfferCubit.addItemToOffer(widget.barterModel);
                          } else {
                            _makeOfferCubit
                                .removeItemToOffer(widget.barterModel);
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
