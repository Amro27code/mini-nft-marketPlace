import 'dart:ui';
import 'package:flutter/material.dart';
import '../ReUseFiles/color_manager.dart';
import '../ReUseFiles/icons.dart';
import '../ReUseFiles/numbers_manager.dart';

class Bnb extends StatelessWidget {
  const Bnb({
    super.key,
    required this.onPressedH,
    required this.onPressedS,
    required this.onPressedSearch,
    required this.onPressedP,
  });

  final VoidCallback onPressedH;
  final VoidCallback onPressedS;
  final VoidCallback onPressedSearch;
  final VoidCallback onPressedP;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.bnbWithPolygon,
      child: Stack(
        alignment: .bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.vertical(
              top: Radius.circular(CirRadius.bnbRadius),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: SigmaImageFilter.sigmaXSizedBoxOnB,
                sigmaY: SigmaImageFilter.sigmaYSizedBoxOnB,
              ),
              child: Container(
                height: HeightManager.bnbWithoutPolygon,
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor30Alpha,
                  gradient: LinearGradient(
                    colors: [
                      ColorManager.blueColor,
                      ColorManager.whiteColor,
                      ColorManager.pinkColor,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    IconButton(
                      onPressed: onPressedH,
                      icon: Icon(
                        IconsManager.homeBnb,
                        size: Numbers.sizeIconsBnb,
                      ),
                    ),
                    IconButton(
                      onPressed: onPressedS,
                      icon: Icon(
                        IconsManager.probabilityBnb,
                        size: Numbers.sizeIconsBnb,
                      ),
                    ),
                    const SizedBox(width: WidthManager.wBetweenTwoBBnb),
                    IconButton(
                      onPressed: onPressedSearch,
                      icon: Icon(
                        IconsManager.searchBnb,
                        size: Numbers.sizeIconsBnb,
                      ),
                    ),
                    IconButton(
                      onPressed: onPressedP,
                      icon: Icon(
                        IconsManager.personBnb,
                        size: Numbers.sizeIconsBnb,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: PositionManager.topInPolygon,
            child: Container(
              width: WidthManager.wPolygon,
              height: HeightManager.hPolygon,
              decoration: ShapeDecoration(
                color: ColorManager.whiteColor50Opacity,
                shape: StarBorder.polygon(
                  sides: Numbers.sidesPolygon,
                  pointRounding: Numbers.roundPointsPolygon,
                ),
              ),
              child: const Icon(
                IconsManager.addBnb,
                size: Numbers.sizeIconsBnb,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
