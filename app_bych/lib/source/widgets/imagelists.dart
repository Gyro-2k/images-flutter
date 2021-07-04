import 'package:flutter/material.dart';

import '../models/image.dart';

class ImageList extends StatelessWidget {
  final List<ModelImages> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Text(images[index].url);
      },
    );
  }
}