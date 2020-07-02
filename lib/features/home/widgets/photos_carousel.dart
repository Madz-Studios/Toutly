import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhotosCarousel extends StatefulWidget {
  const PhotosCarousel({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<Widget> items;

  @override
  _PhotosCarouselState createState() => _PhotosCarouselState();
}

class _PhotosCarouselState extends State<PhotosCarousel> {
  int _current = 0;
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
//        Placeholder(),
        CarouselSlider(
          items: widget.items,
          options: CarouselOptions(
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
          ),
          child: Row(
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
              IndicatorCarousel(
                widget: widget,
                appSizeConfig: appSizeConfig,
                current: _current,
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
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'MacBook Pro',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                '''Lorem ipsum is placeholder text commonly used in the graphic, print...''',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
                ),
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'See more',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 12,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class IndicatorCarousel extends StatelessWidget {
  const IndicatorCarousel({
    Key key,
    @required this.widget,
    @required this.appSizeConfig,
    @required int current,
  })  : _current = current,
        super(key: key);

  final PhotosCarousel widget;
  final AppSizeConfig appSizeConfig;
  final int _current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.items.map((url) {
        int index = widget.items.indexOf(url);
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
      }).toList(),
    );
  }
}
