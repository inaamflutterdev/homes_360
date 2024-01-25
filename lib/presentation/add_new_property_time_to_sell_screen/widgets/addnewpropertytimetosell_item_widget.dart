import '../models/addnewpropertytimetosell_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class AddnewpropertytimetosellItemWidget extends StatelessWidget {
  AddnewpropertytimetosellItemWidget(
    this.addnewpropertytimetosellItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddnewpropertytimetosellItemModel addnewpropertytimetosellItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            addnewpropertytimetosellItemModelObj.duration!,
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
