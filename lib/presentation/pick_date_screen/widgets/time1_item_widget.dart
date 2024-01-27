import '../models/time1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class Time1ItemWidget extends StatelessWidget {
  Time1ItemWidget(
    this.time1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Time1ItemModel time1ItemModelObj;

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
            time1ItemModelObj.time!,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
