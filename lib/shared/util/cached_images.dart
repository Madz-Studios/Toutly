import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

List<Widget> getCachedImages(List<String> photosUrl) {
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
        placeholder: (context, url) => SizedBox.shrink(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }

  return listPhoto;
}

List<Widget> getListImages(List<String> photosUrl) {
  List<Widget> listPhoto = [];
  for (final image in photosUrl) {
    listPhoto.add(Image.network(image));
  }

  return listPhoto;
}
