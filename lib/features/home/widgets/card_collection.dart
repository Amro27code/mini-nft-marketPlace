import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/icons.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';

import '../../../models/trending.dart';

class CardCollection extends StatelessWidget {
  const CardCollection({super.key, required this.trendModel});

  final Trending trendModel;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: .centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(CirRadius.clipRRectOnB),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: SigmaImageFilter.sigmaXSizedBoxOnB,
            sigmaY: SigmaImageFilter.sigmaYSizedBoxOnB,
          ),
          child: Container(
            height: HeightManager.h_210,
            width: WidthManager.w167,
            color: ColorManager.whiteColor30Alpha,
            padding: const EdgeInsets.only(
              top: PaddingManager.p_9,
              right: PaddingManager.p_9,
              left: PaddingManager.p_9,
              bottom: PaddingManager.p_18,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(CirRadius.imagesCollectionHome),
                  child: Image(
                    image: AssetImage(trendModel.image),
                    height: HeightManager.h_139,
                    fit: BoxFit.cover,
                    width: WidthManager.w_139,
                  ),
                ),
                const SizedBox(height: HeightManager.h9),
                Row(
                  spacing: WidthManager.w3,
                  children: [
                    Text(
                      trendModel.trendName,
                      style:TextStyleManager.titleHomeCollection,
                    ),
                    const Spacer(),
                    Icon(
                      trendModel.isActive
                          ? IconsManager.fullFavorite
                          : IconsManager.emptyFavorite,
                      color: ColorManager.red,
                    ),
                    Text("${trendModel.countLike}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
