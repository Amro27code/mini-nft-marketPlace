import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/font_family_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/image_path_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/image_home.dart';

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
            child: ListView(
              scrollDirection: .horizontal,
              children: [
                imageHome(
                  textAbove: TextManager.art,
                  imagePath: ImagePathManager.musicHome,
                ),
                imageHome(
                  textAbove: TextManager.art,
                  imagePath: ImagePathManager.artHome,
                ),
                imageHome(
                  textAbove: TextManager.art,
                  imagePath: ImagePathManager.pHome,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
