import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/icons.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/app_bar_wdg.dart';
import 'package:mini_nft_marketplace/features/states/widgets/subtitle_widget.dart';
import 'package:mini_nft_marketplace/features/states/widgets/top_title_widget.dart';

class StatesPage extends StatelessWidget {
  const StatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundHomePage,
      appBar: appBar(
        title: TextManager.stats,
        toolBarHeight: HeightManager.toolBarStatsPage,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: PaddingManager.statsPage,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(IconsManager.drawerMore),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: ColorManager.greyColor)),
            ),
            child: Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                topTitleWidget(
                  text: TextManager.ranking,
                  icon: IconsManager.probabilityBnb,
                  isActive: false,
                ),
                topTitleWidget(
                  text: TextManager.activity,
                  icon: IconsManager.activity,
                  isActive: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 27),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                subTitleWidget(
                  icon1: Icons.window_outlined,
                  text: "All categories",
                  icon2: Icons.keyboard_arrow_down,
                ),
                subTitleWidget(
                  icon1: CupertinoIcons.link,
                  text: "All Chains",
                  icon2: Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
