import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/font_family_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/image_home.dart';
import 'package:mini_nft_marketplace/core/widgets/card_collection.dart';
import '../../core/ReUseFiles/constants.dart';

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
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.allHomescreenHor,
          vertical: PaddingManager.allHomescreenVer,
        ),
        children: [
          SizedBox(
            height: HeightManager.imagesHome,
            child: ListView.separated(
              scrollDirection: .horizontal,
              itemCount: Constants.www.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: WidthManager.separatedListViewHome),
              itemBuilder: (context, index) => imageHome(
                textAbove: Constants.www[index].textAboveImage,
                imagePath: Constants.www[index].imagePath,
              ),
            ),
          ),
          const SizedBox(height: HeightManager.homeBetweenBlock),
          const Align(
            alignment: .topLeft,
            child: Text(
              TextManager.trendingCollections,
              style: TextStyleManager.titleListSeparatedHome,
            ),
          ),
          const SizedBox(height: HeightManager.h7),
          SizedBox(
            height: HeightManager.h_210,
            child: ListView.separated(
              itemCount: Constants.trendList.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: WidthManager.separatedListViewHome),
              itemBuilder: (context, index) =>
                  CardCollection(trendModel: Constants.trendList[index]),
              scrollDirection: .horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
