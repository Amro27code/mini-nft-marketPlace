import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import '../../../core/ReUseFiles/color_manager.dart';
import '../../../core/ReUseFiles/icons.dart';
import '../../../core/ReUseFiles/text_style_manager.dart';

Column topTitleWidget({
  required String text,
  required IconData icon,
  required bool isActive,
}) {
  return Column(
    spacing: Numbers.n10,
    children: [
      Row(
        mainAxisSize: .min,
        spacing: Numbers.n5,
        children: [
          Icon(icon, color: ColorManager.greyColor),
          Text(text, style: TextStyleManager.appTitleStatsActive),
        ],
      ),
      isActive
          ? Container(
              width: WidthManager.activeTopTitleStats,
              height: HeightManager.activeTopTitleStats,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: Numbers.topTitleShadowBlurR,
                    offset: Offset(
                      Numbers.topTitleShadowOffsetX,
                      Numbers.topTitleShadowOffsetY,
                    ),
                    spreadRadius: Numbers.topTitleShadowSpread,
                    color: ColorManager.lightBlueStats,
                  ),
                ],
                color: ColorManager.lightBlueStats,
                borderRadius: BorderRadius.circular(
                  CirRadius.activeTopTitleStats,
                ),
              ),
            )
          : const SizedBox(),
    ],
  );
}
