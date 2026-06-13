import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/models/top_seller_and_hot_new.dart';
import '../../features/home/widgets/image_home.dart';
import '../../models/images_home.dart';
import '../../models/trending.dart';
import 'image_path_manager.dart';
import 'numbers_manager.dart';

class Constants {
  static List<Widget> w = [
    imageHome(
      textAbove: TextManager.music,
      imagePath: ImagePathManager.musicHome,
    ),
    imageHome(textAbove: TextManager.art, imagePath: ImagePathManager.artHome),
    imageHome(
      textAbove: TextManager.virtualWorlds,
      imagePath: ImagePathManager.pHome,
    ),
  ];
  static final List<ImageHomeModel> ww = [
    ImageHomeModel(
      imagePath: ImagePathManager.musicHome,
      textAboveImage: TextManager.music,
    ),
    ImageHomeModel(
      imagePath: ImagePathManager.artHome,
      textAboveImage: TextManager.art,
    ),
    ImageHomeModel(
      imagePath: ImagePathManager.pHome,
      textAboveImage: TextManager.virtualWorlds,
    ),
  ];
  static final List<ImageHomeModel2> www = [
    ImageHomeModel2(
      imagePath: ImagePathManager.musicHome,
      textAboveImage: TextManager.music,
    ),
    ImageHomeModel2(
      imagePath: ImagePathManager.artHome,
      textAboveImage: TextManager.art,
    ),
    ImageHomeModel2(
      imagePath: ImagePathManager.pHome,
      textAboveImage: TextManager.virtualWorlds,
    ),
  ];
  static final List<Trending> trendList = [
    Trending(
      image: ImagePathManager.trend1,
      trendName: TextManager.trend1,
      countLike: 194,
      isActive: false,
    ),
    Trending(
      image: ImagePathManager.trend2,
      trendName: TextManager.trend2,
      countLike: 200,
      isActive: true,
    ),
    Trending(
      image: ImagePathManager.trend3,
      trendName: TextManager.trend3,
      countLike: 978,
      isActive: true,
    ),
  ];
  static final List<TopSellerAndHotNewModel> topSellerList = [
    TopSellerAndHotNewModel(
      imagePath: ImagePathManager.topSeller1,
      title: TextManager.titleSeller1,
      subtitle: TextManager.subtitleSeller1,
      isActive: false,
      countLike: Numbers.n5160,
      seller: Numbers.seller1Collection,
    ),
    TopSellerAndHotNewModel(
      imagePath: ImagePathManager.topSeller2,
      title: TextManager.titleSeller2,
      subtitle: TextManager.subtitleSeller2,
      isActive: false,
      countLike: Numbers.n20,
      seller: Numbers.seller2Collection,
    ),
    TopSellerAndHotNewModel(
      imagePath: ImagePathManager.topSeller3,
      title: TextManager.titleSeller3,
      subtitle: TextManager.subtitleSeller3,
      isActive: true,
      countLike: Numbers.n200,
      seller: Numbers.seller3Collection,
    ),
  ];
  static final List<TopSellerAndHotNewModel> hotNewList = [
    TopSellerAndHotNewModel(
      imagePath: ImagePathManager.hotNew1,
      title: TextManager.titleHotSeller1,
      subtitle: TextManager.subtitleHotSeller1,
      isActive: false,
      countLike: Numbers.n132,
      seller: Numbers.hotNew1seller,
    ),
    TopSellerAndHotNewModel(
      imagePath: ImagePathManager.hotNew2,
      title: TextManager.titleHotSeller2,
      subtitle: TextManager.subtitleHotSeller2,
      isActive: false,
      countLike: Numbers.n3222,
      seller: Numbers.hotNew2seller,
    ),
    TopSellerAndHotNewModel(
      imagePath: ImagePathManager.hotNew3,
      title: TextManager.titleHotSeller3,
      subtitle: TextManager.subtitleHotSeller3,
      isActive: false,
      countLike: Numbers.n27,
      seller: Numbers.hotNew3seller,
    ),
  ];
}
