import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/util/cached_images.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'indicator_carousel.dart';

class CarouselSliderCustom extends StatefulWidget {
  final BarterModel barterModel;
  CarouselSliderCustom(this.barterModel);
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
          items: getCachedImages(widget.barterModel.photosUrl),
          options: CarouselOptions(
            height: double.maxFinite,
            viewportFraction: 1.0,
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
            items: getCachedImages(widget.barterModel.photosUrl),
            current: _current,
          ),
        ),
      ],
    );
  }
}
