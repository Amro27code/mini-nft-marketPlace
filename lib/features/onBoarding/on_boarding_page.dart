import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/alignment_manager.dart';
import 'package:mini_nft_marketplace/core/color_manager.dart';
import 'package:mini_nft_marketplace/core/image_path_manager.dart';
import 'package:mini_nft_marketplace/core/text_manager.dart';
import 'package:mini_nft_marketplace/core/text_style_manager.dart';
import '../../core/widgets/card_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //في figma  اخفي الصورة بطلع معك هالخفية
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(
              AlignmentManager.beginX_Gradiant,
              AlignmentManager.beginY_Gradiant,
            ),
            end: Alignment(
              AlignmentManager.endY_Gradiant,
              AlignmentManager.endY_Gradiant,
            ),
            colors: [ColorManager.backgroundOnB1, ColorManager.backgroundOnB2],
          ),
        ),
        child: Stack(
          children: [
            Image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(ImagePathManager.backgroundOnBoarding),
            ),
            // OR
            // SizedBox(
            //   width: double.infinity,
            //   height: double.infinity,
            //   child:
            //   Image.asset(
            //     ImagePathManager.backgroundOnBoarding,
            //     fit: BoxFit.cover, //fill
            //   ),
            // ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 90.0),
                child: Column(
                  children: [
                    Text(
                      TextManager.titleOnB,
                      style: TextStyleManager.titleOnB,
                    ),
                    Spacer(),
                    cardWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
