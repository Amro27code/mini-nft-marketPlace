import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';

import '../../models/images_home.dart';
import '../widgets/image_home.dart';
import 'image_path_manager.dart';

class Constants {
  static List<Widget> w = [
    imageHome(
      textAbove: TextManager.music,
      imagePath: ImagePathManager.musicHome,
    ),
    imageHome(textAbove: TextManager.art, imagePath: ImagePathManager.artHome),
    imageHome(
      textAbove: TextManager.virtualWorlds,
      imagePath: ImagePathManager.pHome,
    ),
  ];
  static final List<ImageHomeModel> ww = [
    ImageHomeModel(
      imagePath: ImagePathManager.musicHome,
      textAboveImage: TextManager.music,
    ),
    ImageHomeModel(
      imagePath: ImagePathManager.artHome,
      textAboveImage: TextManager.art,
    ),
    ImageHomeModel(
      imagePath: ImagePathManager.pHome,
      textAboveImage: TextManager.virtualWorlds,
    ),
  ];
  static final List<ImageHomeModel2> www = [
    ImageHomeModel2(
      imagePath: ImagePathManager.musicHome,
      textAboveImage: TextManager.music,
    ),
    ImageHomeModel2(
      imagePath: ImagePathManager.artHome,
      textAboveImage: TextManager.art,
    ),
    ImageHomeModel2(
      imagePath: ImagePathManager.pHome,
      textAboveImage: TextManager.virtualWorlds,
    ),
  ];
}
