import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/widgets/top_seller_collection.dart';
import 'package:mini_nft_marketplace/models/top_seller_and_hot_new.dart';

import '../../../core/ReUseFiles/constants.dart';
import '../../../core/ReUseFiles/numbers_manager.dart';
import '../../../core/ReUseFiles/text_manager.dart';
import 'aligns_wdg_home.dart';
import 'card_collection.dart';
import 'image_home.dart';

SizedBox categoryImage() {
  return SizedBox(
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
  );
}

Column trendingField() {
  return Column(
    children: [
      alignWidget(text: TextManager.trendingCollections),
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
  );
}

Column topSellerAndHotNewField({required List<TopSellerAndHotNewModel> listModels}) {
  return Column(
    children: [
      alignWidget(text: TextManager.topSeller),
      const SizedBox(height: HeightManager.h7),
      SizedBox(
        height: HeightManager.h_256,
        child: ListView.separated(
          scrollDirection: .horizontal,
          itemCount: Constants.topSellerList.length,
          separatorBuilder: (context, index) =>
              const SizedBox(width: WidthManager.w9),
          itemBuilder: (context, index) => TopSellerCollection(
            topSellerModel: listModels[index],
          ),
        ),
      ),
    ],
  );
}
