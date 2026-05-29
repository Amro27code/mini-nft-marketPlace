import 'package:flutter/material.dart';

import '../color_manager.dart';
import '../text_manager.dart';
import '../text_style_manager.dart';

Card cardWidget(){
  return  Card(
    color: ColorManager.transparentColor,
    child: Padding(
      padding: const EdgeInsets.all(27.0),
      child: Column(
        children: [
          Text(
            TextManager.titleCardOnB,
            style: TextStyleManager.titleCardOnB,
          ),
          const SizedBox(height: 5.41),
          Text(
            TextManager.subtitleCardOnB,
            textAlign: .center,
            style: TextStyleManager.subtitleCardOnB,
          ),
          const SizedBox(height: 27),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorManager.buttonOnB,
            ),
            child: Text(
              TextManager.buttonOnB,
              style: TextStyleManager.buttonOnB,
            ),
          ),
        ],
      ),
    ),
  );
}