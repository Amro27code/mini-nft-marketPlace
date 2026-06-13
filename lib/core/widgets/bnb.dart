import 'dart:ui';

import 'package:flutter/material.dart';

import '../ReUseFiles/color_manager.dart';
import '../ReUseFiles/icons.dart';
import '../ReUseFiles/numbers_manager.dart';

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}

int index = 0;

class _BnbState extends State<Bnb> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.bnbWithPolygon,
      child: Stack(
        alignment: .bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.vertical(
              top: Radius.circular(PositionManager.topInPolygon),
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
                    Icon(IconsManager.homeBnb, size: Numbers.sizeIconsBnb),
                    Icon(
                      IconsManager.probabilityBnb,
                      size: Numbers.sizeIconsBnb,
                    ),
                    const SizedBox(width: WidthManager.wBetweenTwoBBnb),
                    Icon(IconsManager.searchBnb, size: Numbers.sizeIconsBnb),
                    Icon(IconsManager.personBnb, size: Numbers.sizeIconsBnb),
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
