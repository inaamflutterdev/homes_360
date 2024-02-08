import '../models/cards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class CardsItemWidget extends StatelessWidget {
  CardsItemWidget(
    this.cardsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardsItemModel cardsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: cardsItemModelObj.image,
            height: 62.adaptSize,
            width: 62.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardsItemModelObj.theNewSchoolAt!,
                    style: CustomTextStyles.labelLargePrimaryContainerBold,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    cardsItemModelObj.publicPrekEight!,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignalGray300,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          cardsItemModelObj.reviewsCounter!,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
