import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/models/top_seller_and_hot_new.dart';
import '../../features/home/widgets/image_home.dart';
import '../../models/images_home.dart';
import '../../models/table_row_model.dart';
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
  static final List<TableRowModel> tableRowStatsPage = [
    TableRowModel(
      id: 1,
      leading: ImagePathManager.tableRow1,
      title: "Azumi",
      subtitle: "view info",
      seller: 200055.02,
      rankAverage: "3,99%",
    ),
    TableRowModel(
      id: 2,
      leading: ImagePathManager.tableRow2,
      title: "Hape prime",
      subtitle: "view info",
      seller: 180055.45,
      rankAverage: "33,79%",
    ),
    TableRowModel(
      id: 3,
      leading: ImagePathManager.tableRow3,
      title: "Cryoto",
      subtitle: "view info",
      seller: 90055.62,
      rankAverage: "-6,56%",
      isRed: true,
    ),
    TableRowModel(
      id: 4,
      leading: ImagePathManager.tableRow4,
      title: "Ape Club",
      subtitle: "view info",
      seller: 10055.02,
      rankAverage: "3,99%",
    ),
    TableRowModel(
      id: 5,
      leading: ImagePathManager.tableRow5,
      title: "Bat",
      subtitle: "view info",
      seller: 200055.02,
      rankAverage: "3,99%",
    ),
    TableRowModel(
      id: 6,
      leading: ImagePathManager.tableRow6,
      title: "Mutant",
      subtitle: "view info",
      seller: 9095.27,
      rankAverage: "3,99%",
    ),
    TableRowModel(
      id: 7,
      leading: ImagePathManager.tableRow7,
      title: "Metaverse",
      subtitle: "view info",
      seller: 10055.02,
      rankAverage: "3,99%",
    ),
    TableRowModel(
      id: 8,
      leading: ImagePathManager.tableRow8,
      title: "Mountain",
      subtitle: "view info",
      seller: 10055.2,
      rankAverage: "3,99%",
    ),
    TableRowModel(
      id: 9,
      leading: ImagePathManager.tableRow9,
      title: "Mutant",
      subtitle: "view info",
      seller: 5055.73,
      rankAverage: "3,99%",
    ),
    TableRowModel(
      id: 10,
      leading: ImagePathManager.tableRow10,
      title: "The Sandbox",
      subtitle: "view info",
      seller: 1055.02,
      rankAverage: "-1,99%",
    ),
  ];
}
