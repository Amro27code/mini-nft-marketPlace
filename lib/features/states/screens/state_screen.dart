import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/widgets/app_bar_wdg.dart';
import 'package:mini_nft_marketplace/core/widgets/bnb.dart';

class StatesPage extends StatelessWidget {
  const StatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundHomePage,
      appBar: appBar(

        title: "Status",
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.ellipsis_circle),
          ),
        ],
      ),
      body: Center(
        child: Text("data", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
