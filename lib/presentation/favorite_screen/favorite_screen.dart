import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'package:homes360/widgets/custom_outlined_button.dart';
import 'provider/favorite_provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  FavoriteScreenState createState() => FavoriteScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FavoriteProvider(), child: FavoriteScreen());
  }
}

class FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: Column(children: [
                                _buildFilterSort(context),
                                SizedBox(height: 24.v),
                                _buildImgStack(context,
                                    userImage: ImageConstant.imgImg),
                                SizedBox(height: 16.v),
                                _buildGoldenMeadowsRow(context,
                                    title: "lbl_golden_meadows".tr,
                                    location: "msg_st_celina_delaware2".tr,
                                    price: "lbl_price".tr,
                                    rate: "lbl_500".tr),
                                SizedBox(height: 22.v),
                                _buildImgStack(context,
                                    userImage: ImageConstant.imgImg180x327),
                                SizedBox(height: 16.v),
                                _buildGoldenMeadowsRow(context,
                                    title: "lbl_golden_meadows".tr,
                                    location: "msg_st_celina_delaware2".tr,
                                    price: "lbl_price".tr,
                                    rate: "lbl_500".tr),
                                SizedBox(height: 22.v),
                                _buildImgStack(context,
                                    userImage: ImageConstant.imgImg7)
                              ]))))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 35.v),
                child: _buildGoldenMeadowsRow(context,
                    title: "lbl_golden_meadows".tr,
                    location: "msg_st_celina_delaware2".tr,
                    price: "lbl_price".tr,
                    rate: "lbl_500".tr))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
            margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_favorites".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFilterSort(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomOutlinedButton(
          height: 40.v,
          width: 92.h,
          text: "lbl_filter".tr,
          rightIcon: Container(
              margin: EdgeInsets.only(left: 10.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgSettings24x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          buttonStyle: CustomButtonStyles.outlineGray,
          buttonTextStyle: theme.textTheme.titleSmall!),
      CustomOutlinedButton(
          height: 40.v,
          width: 87.h,
          text: "lbl_sort".tr,
          margin: EdgeInsets.only(left: 8.h),
          rightIcon: Container(
              margin: EdgeInsets.only(left: 10.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgFramePrimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          buttonStyle: CustomButtonStyles.outlineGray,
          buttonTextStyle: theme.textTheme.titleSmall!),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
          child: Text("lbl_8_homes".tr, style: theme.textTheme.titleSmall))
    ]);
  }

  /// Common widget
  Widget _buildImgStack(
    BuildContext context, {
    required String userImage,
  }) {
    return SizedBox(
        height: 180.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: userImage,
              height: 180.v,
              width: 327.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Padding(
              padding: EdgeInsets.only(top: 16.v, right: 16.h),
              child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.outlineGrayTL18,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFavoriteSecondarycontainer)))
        ]));
  }

  /// Common widget
  Widget _buildGoldenMeadowsRow(
    BuildContext context, {
    required String title,
    required String location,
    required String price,
    required String rate,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title,
            style: theme.textTheme.titleMedium!
                .copyWith(color: theme.colorScheme.primaryContainer)),
        SizedBox(height: 11.v),
        Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconMapPin,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(location,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.blueGray500)))
        ])
      ]),
      Column(children: [
        Align(
            alignment: Alignment.centerRight,
            child: Text(price,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: appTheme.blueGray500))),
        SizedBox(height: 10.v),
        Text(rate,
            style: CustomTextStyles.titleMediumPrimary_1
                .copyWith(color: theme.colorScheme.primary))
      ])
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
