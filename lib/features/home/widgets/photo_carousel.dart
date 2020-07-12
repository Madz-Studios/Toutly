import 'package:Toutly/shared/util/cached_images.dart';
import 'package:Toutly/shared/widgets/carousel/indicator_carousel.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PhotoCarousel extends StatefulWidget {
  final List<String> photosUrl;
  PhotoCarousel(this.photosUrl);
  @override
  _PhotoCarouselState createState() => _PhotoCarouselState();
}

class _PhotoCarouselState extends State<PhotoCarousel> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: getListImages(widget.photosUrl),
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
        IndicatorCarousel(
          items: getListImages(widget.photosUrl),
          current: _current,
        ),
      ],
    );
  }
}
