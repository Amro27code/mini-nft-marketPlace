import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/widgets/background_image_widget.dart';
import 'package:mini_nft_marketplace/core/widgets/component_onb.dart';

import '../../../core/ReUseFiles/image_path_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImageWidget(
            imagePath: ImagePathManager.backgroundOnBoarding,
          ),
          const ComponentOnB(),
        ],
      ),
    );
  }
}