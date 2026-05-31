import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';

Image backgroundImageWidget({required String imagePath}) {
  return Image(
    width: WidthManager.infinity,
    height:HeightManager.infinity,
    fit: BoxFit.cover,
    image: AssetImage(imagePath),
  );
}
