import 'package:flutter/material.dart';
import '../ReUseFiles/numbers_manager.dart';
import '../ReUseFiles/text_manager.dart';
import '../ReUseFiles/text_style_manager.dart';
import 'clip_r_rect_widget.dart';

class ComponentOnB extends StatelessWidget {
  const ComponentOnB({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: PaddingManager.verticalPaddingColumnOnB,
        ),
        child: Column(
          children: [
            Text(TextManager.titleOnB, style: TextStyleManager.titleOnB),
            Spacer(),
            boxUnderOnB(context:context),
            // ( OR ) cardWidget()
          ],
        ),
      ),
    );
  }
}
