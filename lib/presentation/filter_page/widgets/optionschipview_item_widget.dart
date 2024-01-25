import '../models/optionschipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class OptionschipviewItemWidget extends StatelessWidget {
  OptionschipviewItemWidget(
    this.optionschipviewItemModelObj, {
    Key? key,
    this.onSelectedChipView2,
  }) : super(
          key: key,
        );

  OptionschipviewItemModel optionschipviewItemModelObj;

  Function(bool)? onSelectedChipView2;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        optionschipviewItemModelObj.freeWiFi!,
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (optionschipviewItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray50,
      selectedColor: appTheme.gray50,
      shape: (optionschipviewItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray50.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray500,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView2?.call(value);
      },
    );
  }
}
