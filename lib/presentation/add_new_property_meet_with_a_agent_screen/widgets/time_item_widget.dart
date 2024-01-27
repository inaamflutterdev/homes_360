import '../models/time_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  TimeItemWidget(
    this.timeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TimeItemModel timeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 83.h,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            timeItemModelObj.time!,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
