import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class IndicatorCarousel extends StatelessWidget {
  const IndicatorCarousel({
    Key key,
    @required this.items,
    @required int current,
  })  : _current = current,
        super(key: key);

  final List<Widget> items;
  final int _current;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map(
        (url) {
          int index = items.indexOf(url);
          return Container(
            width: appSizeConfig.blockSizeHorizontal * 2,
            height: appSizeConfig.blockSizeVertical * 2,
            margin: EdgeInsets.symmetric(
                vertical: appSizeConfig.blockSizeVertical * 1,
                horizontal: appSizeConfig.blockSizeHorizontal * 1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? kPrimaryColor
                  : Color.fromRGBO(0, 0, 0, 0.4),
            ),
          );
        },
      ).toList(),
    );
  }
}
