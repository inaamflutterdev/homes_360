import '../models/options_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget(
    this.optionsItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  OptionsItemModel optionsItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          optionsItemModelObj.freeWiFi!,
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 14.fSize,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (optionsItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primaryContainer.withOpacity(0.2),
        shape: (optionsItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray500,
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
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
