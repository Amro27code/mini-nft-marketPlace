import 'package:flutter/material.dart';

import '../core/widgets/image_home.dart';

class ImageHomeModel {
  String imagePath, textAboveImage;

  ImageHomeModel({required this.imagePath, required this.textAboveImage});

  Stack imagesHome() =>
      imageHome(textAbove: textAboveImage, imagePath: imagePath);
}

class ImageHomeModel2 {
  String imagePath, textAboveImage;

  ImageHomeModel2({required this.imagePath, required this.textAboveImage});
}
