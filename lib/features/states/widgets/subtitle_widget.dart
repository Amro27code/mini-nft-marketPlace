import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';

import '../../../core/ReUseFiles/color_manager.dart';

Container subTitleWidget({
  required IconData icon1,
  required String text,
  required IconData icon2,
}) {
  return Container(
    width: 147.75,
    height: 39.72,
    decoration: BoxDecoration(
      border: BoxBorder.all(color: ColorManager.backgroundOnB1, width: 0.4),
      color: ColorManager.lightBlueStats.withAlpha(15),
      borderRadius: BorderRadius.circular(27),
    ),
    child: Row(
      spacing: 3,
      mainAxisAlignment: .center,
      children: [
        Icon(icon1, color: ColorManager.greyColor, size: 15),
        Text(text, style: TextStyleManager.subTitleStats),
        Icon(icon2, color: ColorManager.greyColor, size: 15),
      ],
    ),
  );
}
