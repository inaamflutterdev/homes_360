// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:homes360/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'package:homes360/widgets/custom_text_form_field.dart';
import 'provider/message_chat_provider.dart';

class MessageChatScreen extends StatefulWidget {
  const MessageChatScreen({Key? key}) : super(key: key);

  @override
  MessageChatScreenState createState() => MessageChatScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MessageChatProvider(), child: MessageChatScreen());
  }
}

class MessageChatScreenState extends State<MessageChatScreen> {
  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  @override
  void initState() {
    super.initState();
    _initializePermissionsAndShowImages();
  }

  void _initializePermissionsAndShowImages() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_today2".tr,
                              style: CustomTextStyles.labelLargeSemiBold)),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                          height: 53.v,
                          width: 97.h,
                          text: "lbl_hi_tom".tr,
                          buttonStyle: CustomButtonStyles.fillBlue,
                          buttonTextStyle: CustomTextStyles.titleSmallMedium),
                      SizedBox(height: 8.v),
                      Container(
                          width: 264.h,
                          margin: EdgeInsets.only(left: 63.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 14.v),
                          decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                Container(
                                    width: 218.h,
                                    margin: EdgeInsets.only(right: 13.h),
                                    child: Text("msg_i_m_looking_for".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.titleSmallMedium
                                            .copyWith(height: 1.50)))
                              ])),
                      SizedBox(height: 5.v),
                      Text("lbl_12_13".tr, style: theme.textTheme.bodySmall),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 210.h,
                              margin: EdgeInsets.only(right: 117.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 13.v),
                              decoration: AppDecoration.fillGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL101),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    Container(
                                        width: 154.h,
                                        margin: EdgeInsets.only(right: 23.h),
                                        child: Text("msg_hi_santi_of_course".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleSmallMedium
                                                .copyWith(height: 1.50)))
                                  ]))),
                      SizedBox(height: 5.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_12_15".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 15.v),
                      Container(
                          width: 264.h,
                          margin: EdgeInsets.only(left: 63.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 13.v),
                          decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                Container(
                                    width: 222.h,
                                    margin: EdgeInsets.only(right: 9.h),
                                    child: Text("msg_that_s_great_thank".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.titleSmallMedium
                                            .copyWith(height: 1.50)))
                              ])),
                      SizedBox(height: 5.v),
                      Text("lbl_12_18".tr, style: theme.textTheme.bodySmall),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: EdgeInsets.only(right: 151.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 13.v),
                              decoration: AppDecoration.fillGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL101),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    SizedBox(
                                        width: 140.h,
                                        child: Text("msg_of_course_see_you".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleSmallMedium
                                                .copyWith(height: 1.50)))
                                  ]))),
                      SizedBox(height: 5.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_12_19".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildTypeMessage(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 65.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Row(children: [
                AppbarTitleIconbutton(
                    imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
                    margin: EdgeInsets.only(bottom: 3.v),
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Column(children: [
                      AppbarSubtitleOne(text: "lbl_robert_fox".tr),
                      SizedBox(height: 1.v),
                      AppbarSubtitleFour(
                          text: "lbl_online".tr,
                          margin: EdgeInsets.only(right: 56.h))
                    ])),
                AppbarTitleIconbutton(
                    imagePath: ImageConstant.imgUser,
                    margin: EdgeInsets.only(left: 88.h, bottom: 3.v),
                    onTap: () {
                      onTapUser(context);
                    }),
                AppbarTitleIconbutton(
                    imagePath: ImageConstant.imgPhonePrimarycontainer,
                    margin: EdgeInsets.only(left: 12.h, bottom: 3.v),
                    onTap: () {
                      onTapPhone(context);
                    })
              ])),
          SizedBox(height: 20.v),
          SizedBox(width: double.maxFinite, child: Divider())
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildTypeMessage(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 16.v),
        decoration: AppDecoration.outlineBlueGrayF,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Selector<MessageChatProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.typeMessageController,
                      builder: (context, typeMessageController, child) {
                        return CustomTextFormField(
                            controller: typeMessageController,
                            hintText: "msg_write_a_reply".tr,
                            hintStyle: theme.textTheme.bodyMedium!,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(16.h, 17.v, 12.h, 17.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgPlus,
                                    height: 22.adaptSize,
                                    width: 22.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 56.v),
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCameraBlueGray500,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 56.v),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 18.v));
                      })),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgUserWhiteA700)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapUser(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);

    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  /// Requests the user's permission to access the device's contacts and retrieves
  /// the list of contacts, if permission is granted.
  ///
  /// Returns a [Future] that completes with a list of [Contact] objects if
  /// permission is granted and contacts are available, otherwise an empty list.
  onTapPhone(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.contacts);

    List<Contact> contactList = [];
    if (await PermissionManager.isPermissionGranted(Permission.contacts)) {
      contactList = await FlutterContacts.getContacts();
    }
  }
}
