import '../add_new_property_reason_selling_home_screen/widgets/addnewpropertyreasonsellinghome_item_widget.dart';
import 'models/addnewpropertyreasonsellinghome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_checkbox_button.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'provider/add_new_property_reason_selling_home_provider.dart';

class AddNewPropertyReasonSellingHomeScreen extends StatefulWidget {
  const AddNewPropertyReasonSellingHomeScreen({Key? key}) : super(key: key);

  @override
  AddNewPropertyReasonSellingHomeScreenState createState() =>
      AddNewPropertyReasonSellingHomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddNewPropertyReasonSellingHomeProvider(),
        child: AddNewPropertyReasonSellingHomeScreen());
  }
}

class AddNewPropertyReasonSellingHomeScreenState
    extends State<AddNewPropertyReasonSellingHomeScreen> {
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
                padding: EdgeInsets.all(24.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAddressAndProgress(context),
                      SizedBox(height: 16.v),
                      Container(
                          height: 6.v,
                          width: 327.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray300,
                              borderRadius: BorderRadius.circular(3.h)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                  value: 0.5,
                                  backgroundColor: appTheme.gray300,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary)))),
                      SizedBox(height: 26.v),
                      Text("msg_why_are_you_selling".tr,
                          style: CustomTextStyles.titleMediumBold_1),
                      SizedBox(height: 13.v),
                      _buildAddNewPropertyReasonSellingHome(context),
                      SizedBox(height: 8.v),
                      _buildStreetAddress(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBtn(context)));
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
        title: AppbarSubtitleTwo(text: "msg_add_new_property".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAddressAndProgress(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 8.v, bottom: 4.v),
          child: Text("msg_reason_selling_home".tr,
              style: theme.textTheme.titleSmall)),
      CustomElevatedButton(
          height: 33.v,
          width: 79.h,
          text: "lbl_04_08".tr,
          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)
    ]);
  }

  /// Section Widget
  Widget _buildAddNewPropertyReasonSellingHome(BuildContext context) {
    return Consumer<AddNewPropertyReasonSellingHomeProvider>(
        builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 8.v);
          },
          itemCount: provider.addNewPropertyReasonSellingHomeModelObj
              .addnewpropertyreasonsellinghomeItemList.length,
          itemBuilder: (context, index) {
            AddnewpropertyreasonsellinghomeItemModel model = provider
                .addNewPropertyReasonSellingHomeModelObj
                .addnewpropertyreasonsellinghomeItemList[index];
            return AddnewpropertyreasonsellinghomeItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildStreetAddress(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Selector<AddNewPropertyReasonSellingHomeProvider, bool?>(
                  selector: (context, provider) => provider.other,
                  builder: (context, other, child) {
                    return CustomCheckboxButton(
                        text: "lbl_other".tr,
                        value: other,
                        onChange: (value) {
                          context
                              .read<AddNewPropertyReasonSellingHomeProvider>()
                              .changeCheckBox1(value);
                        });
                  }),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text("msg_please_enter_your".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer)),
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 263.h,
                      margin: EdgeInsets.only(left: 28.h, right: 4.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 10.v),
                      decoration: AppDecoration.fillGray300.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            Container(
                                width: 210.h,
                                margin: EdgeInsets.only(right: 28.h),
                                child: Text("msg_e_g_i_m_helping".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!
                                        .copyWith(height: 1.50)))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v),
        decoration: AppDecoration.outlineBlueGrayF,
        child: CustomElevatedButton(
            text: "lbl_next".tr,
            onPressed: () {
              onTapNext(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the addNewPropertyDecsriptionScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNewPropertyDecsriptionScreen,
    );
  }
}
