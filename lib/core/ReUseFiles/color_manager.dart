import 'package:flutter/material.dart';

class ColorManager {
  static const Color whiteColor = Colors.white;
  static const Color blueColor = Colors.blue;
  static const Color pinkColor = Colors.pink;
  static  Color whiteColor50Opacity = Colors.white.withOpacity(0.5);
  static  Color whiteColor30Alpha = ColorManager.whiteColor.withAlpha(30);
  static const Color backgroundOnB1 = Color(0xff5C6098);
  static const Color backgroundOnB2 = Color(0xff767CB2);
  static const Color transparentColor = Colors.transparent;
  static const Color subtitleCardOnB = Color.fromRGBO(245, 245, 245, 0.7);
  static const Color buttonOnB = Color.fromRGBO(151, 169, 246, 0.5);
  static const Color backgroundHomePage = Color(0xff211134);
  static Color blurImagesHome1 = Color(
    0x00000000,
  ); //OR Color(0xff000000).withValues(alpha: 0) ==> 0x(Hex Opacity value).....
  static Color blurImagesHome2 = Color(0x73000000);
  static Color red = Colors.red;
}
