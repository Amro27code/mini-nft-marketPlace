import 'package:flutter/cupertino.dart';
import '../../../core/ReUseFiles/text_style_manager.dart';

Align alignWidget({required String text}){
  return  Align(
    alignment: .topLeft,
    child: Text(
      text,
      style: TextStyleManager.titleListSeparatedHome,
    ),
  );
}