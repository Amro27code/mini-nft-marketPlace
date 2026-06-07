import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/font_family_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/image_path_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/image_home.dart';

import '../../core/ReUseFiles/constants.dart';
import '../../models/images_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorManager.backgroundHomePage,
        title: Text(
          TextManager.titleHomePage,
          style: TextStyle(
            fontSize: 25.23,
            fontFamily: FontFamilyManager.sfProDisplay,
          ),
        ),
      ),
      backgroundColor: ColorManager.backgroundHomePage,
      body: Column(
        children: [
          SizedBox(
            height: HeightManager.imagesHome,
            child: ListView.separated(
              scrollDirection: .horizontal,
              itemCount: Constants.www.length,
              separatorBuilder: (context, index) => const SizedBox(width: 9.01),
              itemBuilder: (context, index) => imageHome(
                textAbove: Constants.www[index].textAboveImage,
                imagePath: Constants.www[index].imagePath,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
