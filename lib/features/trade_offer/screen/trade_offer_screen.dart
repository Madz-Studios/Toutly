import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/trade_offer/widgets/barter_item_card.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:Toutly/shared/widgets/profile_with_rating.dart';
import 'package:flutter/material.dart';

class TradeOfferScreen extends StatelessWidget {
  final BarterModel barterModel;
  final UserModel barterUser;

  TradeOfferScreen({
    @required this.barterModel,
    @required this.barterUser,
  });
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return Scaffold(
      appBar: AppBar(
        leading: BackOrCloseButton(
          isDialog: false,
          buttonColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Trade offer',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.blockSizeHorizontal * 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              BarterItemCard(barterModel),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Make your offer!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'More chane of winning this item when you write a personal message. '
                  'You may also ask questions to the person.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: ProfileWithRating(
                  user: barterUser,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 2,
                ),
                child: _TextArea(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Note: Cash offer is not allowed!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Select your item',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Select the item you want to trade for from our item list',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: appSizeConfig.blockSizeVertical * 7.5,
                      width: appSizeConfig.blockSizeHorizontal * 17.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0XFFB4B4B4),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Color(0XFFB4B4B4),
                          size: appSizeConfig.blockSizeVertical * 4,
                        ),
                        onPressed: () {
//                        _showAddPhotoOptions(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextArea extends StatefulWidget {
  const _TextArea({
    Key key,
  }) : super(key: key);

  @override
  __TextAreaState createState() => __TextAreaState();
}

class __TextAreaState extends State<_TextArea> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      maxLines: 6,
      keyboardType: TextInputType.multiline,
      maxLength: 500,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w300,
        fontSize: 12.0,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFF7F5F5),
        hintText: 'Write a message..',
        hintStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
