import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/color_manager.dart';
import 'package:mini_nft_marketplace/core/ReUseFiles/font_family_manager.dart';
import 'package:mini_nft_marketplace/models/table_row_model.dart';

ListTile listTileWidget({required TableRowModel tableRow}) {
  return ListTile(
    leading: Text(
      "${tableRow.id}",
      style: TextStyle(color: ColorManager.greyColor),
    ),
    horizontalTitleGap: -1,
    title: Row(
      spacing: 13.51,
      children: [
        Image(image: AssetImage(tableRow.leading), width: 39, height: 39,fit: BoxFit.cover,),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              tableRow.title,
              style: TextStyle(
                fontSize: 15,
                fontFamily: FontFamilyManager.sfProDisplay,
              ),
            ),
            Text(
              tableRow.subtitle,
              style: TextStyle(fontSize: 11, color: ColorManager.greyColor),
            ),
          ],
        ),
      ],
    ),
    trailing: Column(
      crossAxisAlignment: .end,
      spacing: 7,
      children: [
        Text(
          "${tableRow.seller}",
          style: TextStyle(color: ColorManager.whiteColor, fontSize: 13),
        ),
        Text(
          tableRow.rankAverage,
          style: TextStyle(
            color: tableRow.isRed ? ColorManager.red : Colors.green,
          ),
        ),
      ],
    ),
  );
}
