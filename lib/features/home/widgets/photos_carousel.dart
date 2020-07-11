import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/cached_images.dart';
import 'package:Toutly/shared/widgets/carousel/indicator_carousel.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'likes_panel.dart';

class PhotosCarousel extends StatefulWidget {
  const PhotosCarousel({
    Key key,
    @required this.algoliaBarter,
  }) : super(key: key);

  final AlgoliaBarterModel algoliaBarter;

  @override
  _PhotosCarouselState createState() => _PhotosCarouselState();
}

class _PhotosCarouselState extends State<PhotosCarousel> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      children: [
        CarouselSlider(
          items: getCachedImages(widget.algoliaBarter.photosUrl),
          options: CarouselOptions(
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Stack(children: [
          IndicatorCarousel(
            items: getCachedImages(widget.algoliaBarter.photosUrl),
            current: _current,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
            ),
            child: LikesPanel(widget.algoliaBarter),
          ),
        ]),
      ],
    );
  }
}
