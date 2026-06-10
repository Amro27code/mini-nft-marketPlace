import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/font_family_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/image_path_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/image_home.dart';
import '../../core/ReUseFiles/constants.dart';
import '../../core/ReUseFiles/onpressed_fun.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(PaddingManager.allHomescreen),
        child: ListView(
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

            UnconstrainedBox(alignment: .centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(
                  CirRadius.clipRRectOnB,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: SigmaImageFilter.sigmaXSizedBoxOnB,
                    sigmaY: SigmaImageFilter.sigmaYSizedBoxOnB,
                  ),
                  child: Container(
                    height: 210,
                    width: 157.66,
                    color: ColorManager.whiteColor.withAlpha(30),
                    padding: const EdgeInsets.only(
                      top: 9,
                      right: 9,
                      left: 9,
                      bottom: 18,
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(
                            CirRadius.clipRRectOnB,
                          ),
                          child: Image(
                            image: AssetImage(
                              ImagePathManager.musicHome,
                            ),
                            height: 139.64,
                            fit: BoxFit.cover,
                            width: 139.64,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text("data"),
                            Icon(Icons.eighteen_up_rating_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
