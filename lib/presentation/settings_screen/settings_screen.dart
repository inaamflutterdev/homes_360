import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_switch.dart';
import 'provider/settings_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsProvider(), child: SettingsScreen());
  }
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_application_settings".tr,
                          style: CustomTextStyles.titleSmallBluegray500),
                      SizedBox(height: 14.v),
                      _buildNotificationRow(context),
                      SizedBox(height: 16.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      _buildDarkModeRow(context),
                      SizedBox(height: 16.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      _buildCountryRow(context,
                          countryName: "lbl_language".tr,
                          selectedCountry: "lbl_english".tr),
                      SizedBox(height: 16.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      _buildCountryRow(context,
                          countryName: "lbl_country".tr,
                          selectedCountry: "lbl_us".tr),
                      SizedBox(height: 33.v),
                      Text("lbl_support".tr,
                          style: CustomTextStyles.titleSmallBluegray500),
                      SizedBox(height: 14.v),
                      _buildPrivacyPolicyRow(context,
                          privacyPolicyText: "lbl_terms_of_use".tr),
                      SizedBox(height: 16.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      _buildPrivacyPolicyRow(context,
                          privacyPolicyText: "lbl_privacy_policy".tr),
                      SizedBox(height: 14.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      _buildPrivacyPolicyRow(context,
                          privacyPolicyText: "lbl_about".tr),
                      SizedBox(height: 15.v),
                      Divider(),
                      SizedBox(height: 15.v),
                      _buildPrivacyPolicyRow(context,
                          privacyPolicyText: "lbl_faqs".tr),
                      SizedBox(height: 5.v)
                    ]))));
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
        title: AppbarSubtitleTwo(text: "lbl_settings".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildNotificationRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child:
              Text("lbl_notification".tr, style: theme.textTheme.titleSmall)),
      Selector<SettingsProvider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<SettingsProvider>().changeSwitchBox1(value);
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildDarkModeRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child: Text("lbl_dark_mode".tr, style: theme.textTheme.titleSmall)),
      Selector<SettingsProvider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch1,
          builder: (context, isSelectedSwitch1, child) {
            return CustomSwitch(
                value: isSelectedSwitch1,
                onChange: (value) {
                  context.read<SettingsProvider>().changeSwitchBox2(value);
                });
          })
    ]);
  }

  /// Common widget
  Widget _buildCountryRow(
    BuildContext context, {
    required String countryName,
    required String selectedCountry,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(countryName,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.colorScheme.primaryContainer))),
      Spacer(),
      Text(selectedCountry,
          style: CustomTextStyles.titleSmallBluegray500_1
              .copyWith(color: appTheme.blueGray500)),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(left: 4.h, bottom: 2.v))
    ]);
  }

  /// Common widget
  Widget _buildPrivacyPolicyRow(
    BuildContext context, {
    required String privacyPolicyText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(privacyPolicyText,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.colorScheme.primaryContainer))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray500,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the faqsGetHelpScreen when the action is triggered.
  onTapPrivacyPolicyRow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.faqsGetHelpScreen,
    );
  }
}
