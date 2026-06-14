import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/font_family_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';

class TextStyleManager {
  static const TextStyle titleOnB = TextStyle(
    fontSize: 36,
    fontFamily: FontFamilyManager.sfProDisplay,
    fontWeight: .bold,
    color: Colors.white,
  );

  static const TextStyle titleCardOnB = TextStyle(
    fontSize: 19.82,
    fontWeight: .w700,
    color: Colors.white,
    fontFamily: FontFamilyManager.sfProDisplay,
  );

  static const TextStyle subtitleCardOnB = TextStyle(
    fontSize: 11.71,
    fontWeight: .w400,
    color: ColorManager.subtitleCardOnB,
  );
  static const TextStyle buttonOnB = TextStyle(
    fontSize: 15.32,
    fontWeight: .w600,
    color: Colors.white,
  );
  static const TextStyle textImagesHome = TextStyle(
    fontSize: FontSizeManager.textImagesHome,
    fontWeight: .bold,
    fontFamily: FontFamilyManager.sfProDisplay,
  );
  static const TextStyle titleListSeparatedHome = TextStyle(
    fontFamily: FontFamilyManager.sfProDisplay,
    fontWeight: .bold,
    fontSize: 18,
  );
  static const TextStyle titleHomeCollection = TextStyle(
    fontSize: 13,
    fontWeight: .w600,
    fontFamily: FontFamilyManager.sfProDisplay,
  );
  static const TextStyle subtitleHomeCollection = TextStyle(fontSize: 12);
  static const TextStyle titleHomePage = TextStyle(
    fontSize: 25.23,
    fontFamily: FontFamilyManager.sfProDisplay,
  );
  static const TextStyle appTitleStatsActive = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: FontFamilyManager.sfProDisplay,
  );
  static const TextStyle appTitleStatsNonActive = TextStyle(
    fontWeight: FontWeight.bold,
    color: ColorManager.greyColor,
    fontFamily: FontFamilyManager.sfProDisplay,
  );
}
