import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/indicator_carousel.dart';
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
        CarouselSlider(
          items: widget.items,
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
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
                items: widget.items,
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
