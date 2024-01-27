import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_checkbox_button.dart';
import 'provider/past_tours_provider.dart';

class PastToursScreen extends StatefulWidget {
  const PastToursScreen({Key? key}) : super(key: key);

  @override
  PastToursScreenState createState() => PastToursScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PastToursProvider(), child: PastToursScreen());
  }
}

class PastToursScreenState extends State<PastToursScreen> {
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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          _buildOne(context),
                          SizedBox(height: 24.v),
                          _buildTwo3(context)
                        ]))))));
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
        title: AppbarSubtitleTwo(text: "lbl_past_tours".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("msg_mon_apr_4_10_00".tr, style: theme.textTheme.titleSmall),
              SizedBox(height: 3.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text("lbl_canceled".tr,
                        style: CustomTextStyles.labelLargeSecondaryContainer))
              ]),
              SizedBox(height: 13.v),
              Container(
                  width: 264.h,
                  margin: EdgeInsets.only(right: 30.h),
                  child: Text("msg_you_can_request".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargePrimaryContainer
                          .copyWith(height: 1.50))),
              SizedBox(height: 13.v),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle4259,
                  height: 180.v,
                  width: 295.h,
                  radius: BorderRadius.circular(5.h)),
              SizedBox(height: 13.v),
              _buildTwo(context,
                  title: "lbl_golden_meadows".tr,
                  locationText: "msg_st_celina_delaware2".tr,
                  price: "lbl_price".tr,
                  priceText: "lbl_436".tr)
            ]));
  }

  /// Section Widget
  Widget _buildTwo3(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("msg_mon_apr_4_10_00".tr, style: theme.textTheme.titleSmall),
              SizedBox(height: 4.v),
              Selector<PastToursProvider, bool?>(
                  selector: (context, provider) => provider.complete,
                  builder: (context, complete, child) {
                    return CustomCheckboxButton(
                        text: "lbl_complete".tr,
                        value: complete,
                        textStyle: CustomTextStyles.labelLargeOnErrorSemiBold,
                        onChange: (value) {
                          context
                              .read<PastToursProvider>()
                              .changeCheckBox1(value);
                        });
                  }),
              SizedBox(height: 12.v),
              Container(
                  width: 264.h,
                  margin: EdgeInsets.only(right: 30.h),
                  child: Text("msg_you_can_request".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargePrimaryContainer
                          .copyWith(height: 1.50))),
              SizedBox(height: 13.v),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle4259180x295,
                  height: 180.v,
                  width: 295.h,
                  radius: BorderRadius.circular(5.h)),
              SizedBox(height: 13.v),
              _buildTwo(context,
                  title: "lbl_golden_meadows".tr,
                  locationText: "msg_st_celina_delaware2".tr,
                  price: "lbl_price".tr,
                  priceText: "lbl_436".tr)
            ]));
  }

  /// Common widget
  Widget _buildTwo(
    BuildContext context, {
    required String title,
    required String locationText,
    required String price,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title,
                style: CustomTextStyles.titleMedium16
                    .copyWith(color: theme.colorScheme.primaryContainer)),
            SizedBox(height: 10.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconMapPin,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v)),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(locationText,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.blueGray500)))
            ])
          ])),
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Column(children: [
            Align(
                alignment: Alignment.centerRight,
                child: Text(price,
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: appTheme.blueGray500))),
            SizedBox(height: 7.v),
            Text(priceText,
                style: CustomTextStyles.titleMediumPrimary_1
                    .copyWith(color: theme.colorScheme.primary))
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
