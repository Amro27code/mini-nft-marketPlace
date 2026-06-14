import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/icons.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/text_style_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/app_bar_wdg.dart';
import 'package:mini_nft_marketplace/core/widgets/bnb.dart';

class StatesPage extends StatelessWidget {
  const StatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundHomePage,
      appBar: appBar(
        title: "Stats",
        toolBarHeight: 66.67,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.52),
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.ellipsis_circle),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Row(
                  mainAxisSize: .min,
                  spacing: 5,
                  children: [
                    Icon(IconsManager.probabilityBnb, color: Colors.grey),
                    Text(
                      "Ranking",
                      style: TextStyleManager.appTitleStatsActive,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: .min,
                  spacing: 5,
                  children: [
                    Icon(Icons.stacked_line_chart_sharp, color: Colors.grey),
                    Text(
                      "Activity",
                      style: TextStyleManager.appTitleStatsNonActive,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const SizedBox(height:17 ,),
          // Divider(color: Colors.grey,height: 1,thickness: 0.2,)
        ],
      ),
    );
  }
}
