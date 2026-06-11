import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';
import 'package:mini_nft_marketplace/models/topseller.dart';

import '../ReUseFiles/color_manager.dart';
import '../ReUseFiles/icons.dart';
import '../ReUseFiles/numbers_manager.dart';

class TopSellerCollection extends StatelessWidget {
  const TopSellerCollection({super.key, required this.topSellerModel});

  final TopSellerModel topSellerModel;

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
            height: HeightManager.h_256,
            width: WidthManager.w167,
            color: ColorManager.whiteColor30Alpha,
            padding: const EdgeInsets.only(
              top: PaddingManager.p_9,
              right: PaddingManager.p_9,
              left: PaddingManager.p_9,
              bottom: PaddingManager.p_16,
            ),
            child: Column(
              spacing: WidthManager.w3,
              crossAxisAlignment: .start,
              children: [
                Center(
                  child: Image(
                    image: AssetImage(topSellerModel.imagePath),
                    height: HeightManager.h_139,
                    fit: BoxFit.cover,
                    width: WidthManager.w_139,
                  ),
                ),
                const SizedBox(height: HeightManager.h9),
                Text(
                  topSellerModel.title,
                  style: TextStyleManager.titleHomeCollection,
                ),
                Text(
                  topSellerModel.subtitle,
                  style: TextStyleManager.subtitleHomeCollection,
                ),
                Spacer(),
                Row(
                  spacing: WidthManager.w2,
                  children: [
                    Icon(Icons.attach_money),
                    Text(
                      "${topSellerModel.seller}",
                      style: TextStyleManager.titleHomeCollection,
                    ),
                    const Spacer(),
                    Icon(
                      topSellerModel.isActive
                          ? IconsManager.fullFavorite
                          : IconsManager.emptyFavorite,
                      color: ColorManager.red,
                    ),
                    Text("${topSellerModel.countLike}"),
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
