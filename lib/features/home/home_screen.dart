import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/font_family_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/image_home.dart';
import 'package:mini_nft_marketplace/core/widgets/card_collection.dart';
import 'package:mini_nft_marketplace/core/widgets/top_seller_collection.dart';
import '../../core/ReUseFiles/constants.dart';
import '../../core/widgets/bnb.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Stack(
        alignment: .topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(60),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: SigmaImageFilter.sigmaXSizedBoxOnB,
                sigmaY: SigmaImageFilter.sigmaYSizedBoxOnB,
              ),
              child: Container(
                height: 90,
                // width: 10,
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor30Alpha,
                  gradient: LinearGradient(
                    begin: .centerLeft,
                    colors: [Colors.blue, Colors.white, Colors.pink],
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: PaddingManager.p_9,
                  right: PaddingManager.p_9,
                  left: PaddingManager.p_9,
                  bottom: PaddingManager.p_16,
                ),
                child: Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    Icon(Icons.home_outlined, size: 39),
                    Icon(Icons.signal_cellular_alt, size: 39),
                    const SizedBox(width: 39),
                    Icon(Icons.search_rounded, size: 39),
                    Icon(Icons.person_outline_sharp, size: 39),
                  ],
                ),
              ),
            ),
          ),
          Container(width: 39, height: 39, color: Colors.red),
        ],
      ),

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
          const SizedBox(height: HeightManager.homeBetweenBlock),
          const Align(
            alignment: .topLeft,
            child: Text(
              TextManager.topSeller,
              style: TextStyleManager.titleListSeparatedHome,
            ),
          ),
          const SizedBox(height: HeightManager.h7),
          SizedBox(
            height: HeightManager.h_256,
            child: ListView.separated(
              scrollDirection: .horizontal,
              itemCount: Constants.topSellerList.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: WidthManager.w9),
              itemBuilder: (context, index) => TopSellerCollection(
                topSellerModel: Constants.topSellerList[index],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
