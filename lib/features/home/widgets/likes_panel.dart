import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikesPanel extends StatefulWidget {
  @override
  _LikesPanelState createState() => _LikesPanelState();
}

class _LikesPanelState extends State<LikesPanel> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: '100',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: ' likes!',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: _isLiked
              ? SvgPicture.asset(
                  'assets/icons/favourites.svg',
                  height: appSizeConfig.blockSizeVertical * 3,
                  color: Colors.red,
                )
              : SvgPicture.asset(
                  'assets/icons/unpressed-favourites.svg',
                  height: appSizeConfig.blockSizeVertical * 3,
                ),
          onPressed: () {
            setState(() {
              _isLiked = !_isLiked;
            });
          },
        ),
      ],
    );
  }
}
