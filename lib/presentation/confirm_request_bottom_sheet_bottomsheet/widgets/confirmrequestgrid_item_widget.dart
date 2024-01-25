import '../models/confirmrequestgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ConfirmrequestgridItemWidget extends StatelessWidget {
  ConfirmrequestgridItemWidget(
    this.confirmrequestgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConfirmrequestgridItemModel confirmrequestgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillGrayTL20,
            child: CustomImageView(
              imagePath: confirmrequestgridItemModelObj.home,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  confirmrequestgridItemModelObj.homeClosed!,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  confirmrequestgridItemModelObj.twentyFive!,
                  style: CustomTextStyles.titleSmallExtraBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
