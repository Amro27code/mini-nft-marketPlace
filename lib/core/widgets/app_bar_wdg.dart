import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';

AppBar appBar({
  Color backgroundColor=ColorManager.transparentColor,
  bool centerTitle = true,
  required String title,
  TextStyle? textStyle,
  List<Widget>? actions,
  Widget? leading,
  double? toolBarHeight
}) {
  return AppBar(
    centerTitle: centerTitle,
    actions: actions,
    toolbarHeight: toolBarHeight,
    leading: leading,
    backgroundColor: backgroundColor,
   title: Text(title, style: textStyle),
  );
}
