import 'package:flutter/material.dart';

AppBar appBar({
  Color? backgroundColor,
  bool centerTitle = true,
  required String title,
  TextStyle? textStyle,
  List<Widget>? actions,
  Widget? leading,
}) {
  return AppBar(
    centerTitle: centerTitle,
    actions: actions,
    leading: leading,
    backgroundColor: backgroundColor,
    title: Text(title, style: textStyle),
  );
}
