import 'dart:ui';
import 'package:flutter/material.dart';
import '../ReUseFiles/color_manager.dart';
import '../ReUseFiles/numbers_manager.dart';
import '../ReUseFiles/text_manager.dart';
import '../ReUseFiles/text_style_manager.dart';

SizedBox boxUnderOnB() {
  return SizedBox(
    height: HeightManager.sizedBoxOnB,
    width: WidthManager.sizedBoxOnB,
    child: ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(Radius.clipRRectOnB),
      child: BackdropFilter(
        // filterConfig: ImageFilterConfig.blur(sigmaY: 8,sigmaX: 8,),
        // OR
        filter: ImageFilter.blur(
          sigmaX: SigmaImageFilter.sigmaXSizedBoxOnB,
          sigmaY: SigmaImageFilter.sigmaYSizedBoxOnB,
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingManager.inSizedBoxOnB),
          child: Column(
            children: [
              Text(
                TextManager.titleCardOnB,
                style: TextStyleManager.titleCardOnB,
              ),
              const SizedBox(height: HeightManager.space5),
              Text(
                TextManager.subtitleCardOnB,
                textAlign: .center,
                style: TextStyleManager.subtitleCardOnB,
              ),
              const SizedBox(height: HeightManager.space27),
              Container(
                width: 198,
                height: 45.53,
                decoration: BoxDecoration(
                  color: ColorManager.buttonOnB,
                  borderRadius: BorderRadiusGeometry.circular(
                    Radius.containerOnB,
                  ),
                  border: Border.all(
                    color: ColorManager.whiteColor.withAlpha(0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: SigmaImageFilter.sigmaYButtonOnB,
                      sigmaX: SigmaImageFilter.sigmaXButtonOnB,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        TextManager.buttonOnB,
                        style: TextStyleManager.buttonOnB,
                      ),
                    ),
                  ),
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: ColorManager.buttonOnB,
              //   ),
              //   child: Text(
              //     TextManager.buttonOnB,
              //     style: TextStyleManager.buttonOnB,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}
