import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';
Stack imageHome({required String textAbove, required String imagePath}) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(CirRadius.imagesHome),
        child: Image(
          image: AssetImage(imagePath),
          height: HeightManager.imagesHome,
          width: WidthManager.imagesHome,
        ),
      ),
      Positioned(
        bottom: PositionManager.textAboveImageAtHome,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(CirRadius.imagesHome),
            bottomLeft: Radius.circular(CirRadius.imagesHome),
          ),
          child: BackdropFilter(
            filter: .blur(
              sigmaX: SigmaImageFilter.sigmaXImagesHome,
              sigmaY: SigmaImageFilter.sigmaYImagesHome,
            ),
            child: Container(
              ////////////////////////////
              alignment: .center,
              ////////////////////////////
              width: WidthManager.imagesHomeBlur,
              height: HeightManager.imagesHomeBlur,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topCenter,
                  end: .bottomCenter,
                  colors: [
                    ColorManager.blurImagesHome1,
                    ColorManager.blurImagesHome2,
                  ],
                ),
              ),
              child: Text(
                textAbove,
                style: TextStyleManager.textImagesHome,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
