import '../models/addnewpropertydetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class AddnewpropertydetailsItemWidget extends StatelessWidget {
  AddnewpropertydetailsItemWidget(
    this.addnewpropertydetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddnewpropertydetailsItemModel addnewpropertydetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 101.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            addnewpropertydetailsItemModelObj.estimatePrice!,
            style: theme.textTheme.labelMedium,
          ),
          SizedBox(height: 4.v),
          Text(
            addnewpropertydetailsItemModelObj.price!,
            style: CustomTextStyles.titleSmallBold,
          ),
          SizedBox(height: 3.v),
          Container(
            width: 36.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Text(
              addnewpropertydetailsItemModelObj.widget!,
              style: CustomTextStyles.labelMediumSecondaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
