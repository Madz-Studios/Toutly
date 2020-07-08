import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          items: _getCachedImages(widget.barterModel.photosUrl),
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
            items: _getCachedImages(widget.barterModel.photosUrl),
            current: _current,
          ),
        ),
      ],
    );
  }

  List<Widget> _getCachedImages(List<String> photosUrl) {
    List<Widget> listPhoto = [];
    for (final image in photosUrl) {
      listPhoto.add(
        CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: image == null ? '' : image,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => Container(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      );
    }

    return listPhoto;
  }
}
