import '../filter_page/widgets/optionschipview_item_widget.dart';
import '../filter_page/widgets/propertytypechipview_item_widget.dart';
import 'models/filter_model.dart';
import 'models/optionschipview_item_model.dart';
import 'models/propertytypechipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/custom_drop_down.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'package:homes360/widgets/custom_outlined_button.dart';
import 'provider/filter_provider.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  FilterPageState createState() => FilterPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FilterProvider(), child: FilterPage());
  }
}

class FilterPageState extends State<FilterPage>
    with AutomaticKeepAliveClientMixin<FilterPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 27.v),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitleAndPrice(context),
                        SizedBox(height: 22.v),
                        _buildLineStack(context),
                        SizedBox(height: 25.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text("lbl_features".tr,
                                style: CustomTextStyles.titleMedium16)),
                        SizedBox(height: 20.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildBathsRow(context,
                                bathsText: "lbl_beds".tr,
                                twoText: "lbl_42".tr)),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: _buildBathsRow(context,
                                bathsText: "lbl_baths".tr,
                                twoText: "lbl_2".tr)),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text("lbl_property_facts".tr,
                                style: CustomTextStyles.titleMedium16)),
                        SizedBox(height: 17.v),
                        _buildSquareFeetRow(context),
                        SizedBox(height: 17.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text("lbl_lot_size".tr,
                                style: theme.textTheme.titleSmall)),
                        SizedBox(height: 8.v),
                        _buildInputsRow(context),
                        SizedBox(height: 27.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text("lbl_property_type".tr,
                                style: CustomTextStyles.titleMedium16)),
                        SizedBox(height: 14.v),
                        _buildPropertyTypeChipView(context),
                        SizedBox(height: 25.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Row(children: [
                              Text("lbl_amenities".tr,
                                  style: CustomTextStyles.titleMedium16),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVideoCamera,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 26.h))
                            ])),
                        SizedBox(height: 16.v),
                        _buildOptionsChipView(context),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Row(children: [
                              Text("lbl_see_more".tr,
                                  style:
                                      CustomTextStyles.titleSmallPrimaryBold),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 8.h, bottom: 2.v))
                            ])),
                        SizedBox(height: 24.v),
                        _buildButtonsRow(context)
                      ])
                ])))));
  }

  /// Section Widget
  Widget _buildTitleAndPrice(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_price_range".tr,
                      style: CustomTextStyles.titleMedium16),
                  Text("lbl_200_15_000".tr,
                      style: CustomTextStyles.titleSmallPrimary_1)
                ])));
  }

  /// Section Widget
  Widget _buildLineStack(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 24.v,
            width: 327.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 7.v),
                      child: SizedBox(
                          width: 327.h,
                          child: Divider(color: appTheme.gray300)))),
              Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildChevronButton(context),
                        Padding(
                            padding: EdgeInsets.only(top: 14.v, bottom: 7.v),
                            child: SizedBox(
                                width: 103.h,
                                child:
                                    Divider(color: theme.colorScheme.primary))),
                        _buildChevronButton(context)
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildSquareFeetColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_square_feet".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 6.v),
      Selector<FilterProvider, FilterModel?>(
          selector: (context, provider) => provider.filterModelObj,
          builder: (context, filterModelObj, child) {
            return CustomDropDown(
                width: 139.h,
                icon: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 15.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdownBlueGray5001,
                        height: 16.adaptSize,
                        width: 16.adaptSize)),
                hintText: "lbl_min".tr,
                items: filterModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context.read<FilterProvider>().onSelected(value);
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildSquareFeetRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildSquareFeetColumn(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 41.v, bottom: 13.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 17.h, top: 26.v),
                      child: Selector<FilterProvider, FilterModel?>(
                          selector: (context, provider) =>
                              provider.filterModelObj,
                          builder: (context, filterModelObj, child) {
                            return CustomDropDown(
                                width: 139.h,
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 14.v, 12.h, 15.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgArrowdownBlueGray5001,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize)),
                                hintText: "lbl_max".tr,
                                items: filterModelObj?.dropdownItemList1 ?? [],
                                onChanged: (value) {
                                  context
                                      .read<FilterProvider>()
                                      .onSelected1(value);
                                });
                          }))
                ])));
  }

  /// Section Widget
  Widget _buildInputsRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Selector<FilterProvider, FilterModel?>(
                  selector: (context, provider) => provider.filterModelObj,
                  builder: (context, filterModelObj, child) {
                    return CustomDropDown(
                        width: 139.h,
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 15.v),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowdownBlueGray5001,
                                height: 16.adaptSize,
                                width: 16.adaptSize)),
                        hintText: "lbl_min".tr,
                        items: filterModelObj?.dropdownItemList2 ?? [],
                        onChanged: (value) {
                          context.read<FilterProvider>().onSelected2(value);
                        });
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 14.v)),
              Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Selector<FilterProvider, FilterModel?>(
                      selector: (context, provider) => provider.filterModelObj,
                      builder: (context, filterModelObj, child) {
                        return CustomDropDown(
                            width: 139.h,
                            icon: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 15.v),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowdownBlueGray5001,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize)),
                            hintText: "lbl_max".tr,
                            items: filterModelObj?.dropdownItemList3 ?? [],
                            onChanged: (value) {
                              context.read<FilterProvider>().onSelected3(value);
                            });
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildPropertyTypeChipView(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Consumer<FilterProvider>(builder: (context, provider, child) {
          return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                  provider.filterModelObj.propertytypechipviewItemList.length,
                  (index) {
                PropertytypechipviewItemModel model =
                    provider.filterModelObj.propertytypechipviewItemList[index];
                return PropertytypechipviewItemWidget(model,
                    onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                });
              }));
        }));
  }

  /// Section Widget
  Widget _buildOptionsChipView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Consumer<FilterProvider>(builder: (context, provider, child) {
          return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                  provider.filterModelObj.optionschipviewItemList.length,
                  (index) {
                OptionschipviewItemModel model =
                    provider.filterModelObj.optionschipviewItemList[index];
                return OptionschipviewItemWidget(model,
                    onSelectedChipView2: (value) {
                  provider.onSelectedChipView2(index, value);
                });
              }));
        }));
  }

  /// Section Widget
  Widget _buildButtonsRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.outlineBlueGrayF,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomOutlinedButton(
                  text: "lbl_reset".tr,
                  margin: EdgeInsets.only(right: 7.h),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold)),
          Expanded(
              child: CustomElevatedButton(
                  text: "lbl_apply".tr, margin: EdgeInsets.only(left: 7.h)))
        ]));
  }

  /// Common widget
  Widget _buildChevronButton(BuildContext context) {
    return Container(
        width: 24.h,
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 7.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgChevronLeft,
              height: 10.adaptSize,
              width: 10.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgChevronRight,
              height: 10.adaptSize,
              width: 10.adaptSize)
        ]));
  }

  /// Common widget
  Widget _buildBathsRow(
    BuildContext context, {
    required String bathsText,
    required String twoText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(bathsText,
          style: CustomTextStyles.titleMediumMedium
              .copyWith(color: theme.colorScheme.primaryContainer)),
      Spacer(),
      CustomIconButton(
          height: 24.adaptSize,
          width: 24.adaptSize,
          child: CustomImageView(imagePath: ImageConstant.imgArrowLeftGray300)),
      Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: Text(twoText,
              style: CustomTextStyles.titleMedium16
                  .copyWith(color: theme.colorScheme.primaryContainer))),
      Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              child: CustomImageView(imagePath: ImageConstant.imgFloatingIcon)))
    ]);
  }
}
