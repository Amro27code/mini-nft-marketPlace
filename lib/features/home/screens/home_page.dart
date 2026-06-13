import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/constants.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/app_bar_wdg.dart';
import 'package:mini_nft_marketplace/features/home/widgets/fields_home.dart';
import '../../../core/widgets/bnb.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
      backgroundColor: ColorManager.backgroundHomePage,
      title: TextManager.titleHomePage,
      textStyle: TextStyleManager.titleHomePage,
    ),
      backgroundColor: ColorManager.backgroundHomePage,

      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.allHomescreenHor,
          vertical: PaddingManager.allHomescreenVer,
        ),
        children: [
          categoryImage(),
          const SizedBox(height: HeightManager.homeBetweenBlock),
          trendingField(),
          const SizedBox(height: HeightManager.homeBetweenBlock),
          topSellerAndHotNewField(
            listModels: Constants.topSellerList,
            header: TextManager.topSeller,
          ),
          const SizedBox(height: HeightManager.homeBetweenBlock),
          topSellerAndHotNewField(
            listModels: Constants.hotNewList,
            header: TextManager.hotNewItems,
          ),
        ],
      ),
    );
  }
}
