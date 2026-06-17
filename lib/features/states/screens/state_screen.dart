import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/constants.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/icons.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/numbers_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/app_bar_wdg.dart';
import 'package:mini_nft_marketplace/features/states/widgets/list_tile_widget.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: ColorManager.greyColor),
                ),
              ),
              child: Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  topTitleWidget(
                    text: TextManager.ranking,
                    icon: IconsManager.probabilityBnb,
                    isActive: true,
                  ),
                  topTitleWidget(
                    text: TextManager.activity,
                    icon: IconsManager.activity,
                    isActive: false,
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
            // const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 26,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                  begin: .topCenter,
                  end: .bottomCenter,
                  colors: [
                    Color(0xff2C2759),
                    Color(0xff2C2759),
                    Color(0xff22406D),
                    Color(0xff2C2759),
                    Color(0xff2C2759),
                    Color(0xff2C2759),
                  ],
                ),
              ),
              child: ListView.separated(
                shrinkWrap: true, //بتشيلها بعطي error
                physics: NeverScrollableScrollPhysics(), //عشان تعمل scroll على الليست فيو نفسها كمان
                padding: const EdgeInsets.only(top: 18, bottom: 75),
                itemCount: Constants.tableRowStatsPage.length,
                itemBuilder: (context, index) => listTileWidget(
                  tableRow: Constants.tableRowStatsPage[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
