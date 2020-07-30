import 'package:Toutly/shared/util/cached_images.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'indicator_carousel.dart';

class CarouselSliderCustom extends StatefulWidget {
  final List<String> photosUrl;
  CarouselSliderCustom(this.photosUrl);
  @override
  _CarouselSliderCustomState createState() => _CarouselSliderCustomState();
}

class _CarouselSliderCustomState extends State<CarouselSliderCustom> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: getCachedImages(widget.photosUrl),
          options: CarouselOptions(
            height: double.maxFinite,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: IndicatorCarousel(
            items: getCachedImages(widget?.photosUrl ?? ''),
            current: _current,
          ),
        ),
      ],
    );
  }
}
