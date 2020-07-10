import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/shared/widgets/carousel/indicator_carousel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
    return Stack(
      children: [
        CarouselSlider(
          items: _getCachedImages(widget.algoliaBarter.photosUrl),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: IndicatorCarousel(
            items: _getCachedImages(widget.algoliaBarter.photosUrl),
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
