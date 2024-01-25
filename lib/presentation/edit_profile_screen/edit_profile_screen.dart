import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/core/utils/validation_functions.dart';
import 'package:homes360/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_icon_button.dart';
import 'package:homes360/widgets/custom_text_form_field.dart';
import 'provider/edit_profile_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  EditProfileScreenState createState() => EditProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EditProfileProvider(), child: EditProfileScreen());
  }
}

// ignore_for_file: must_be_immutable
class EditProfileScreenState extends State<EditProfileScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<EditProfileProvider>(context, listen: false).callFetchMe(
        onError: () {
          _onFetchMeEventError();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.all(24.h),
                            child: Column(children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapTelevision(context);
                                  },
                                  child: SizedBox(
                                      height: 100.adaptSize,
                                      width: 100.adaptSize,
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle361100x100,
                                                height: 100.adaptSize,
                                                width: 100.adaptSize,
                                                radius:
                                                    BorderRadius.circular(50.h),
                                                alignment: Alignment.center),
                                            CustomIconButton(
                                                height: 24.adaptSize,
                                                width: 24.adaptSize,
                                                padding: EdgeInsets.all(6.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .outlineGrayTL121,
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTelevisionGray50))
                                          ]))),
                              SizedBox(height: 33.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_full_name2".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 7.v),
                              _buildEditProfileFullName(context),
                              SizedBox(height: 17.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_email".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 7.v),
                              _buildEditProfileEmail(context),
                              SizedBox(height: 17.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_address".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 7.v),
                              _buildEditProfileAddress(context),
                              SizedBox(height: 17.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_password".tr,
                                      style: theme.textTheme.labelLarge)),
                              SizedBox(height: 7.v),
                              _buildEditProfilePassword(context),
                              SizedBox(height: 5.v)
                            ]))))),
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
        title: AppbarSubtitleTwo(text: "lbl_edit_profile".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEditProfileFullName(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.editProfileFullNameController,
        builder: (context, editProfileFullNameController, child) {
          return CustomTextFormField(
              controller: editProfileFullNameController,
              hintText: "lbl_andrew_preston".tr);
        });
  }

  /// Section Widget
  Widget _buildEditProfileEmail(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.editProfileEmailController,
        builder: (context, editProfileEmailController, child) {
          return CustomTextFormField(
              controller: editProfileEmailController,
              hintText: "lbl_test_gmail_com".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEditProfileAddress(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.editProfileAddressController,
        builder: (context, editProfileAddressController, child) {
          return CustomTextFormField(
              controller: editProfileAddressController,
              hintText: "msg_merta_nadi_street".tr);
        });
  }

  /// Section Widget
  Widget _buildEditProfilePassword(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.editProfilePasswordController,
        builder: (context, editProfilePasswordController, child) {
          return CustomTextFormField(
              controller: editProfilePasswordController,
              hintText: "lbl_123456".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildSaveChange(BuildContext context) {
    return CustomElevatedButton(text: "lbl_save_change".tr);
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v),
        decoration: AppDecoration.outlineBlueGrayF,
        child: _buildSaveChange(context));
  }

  /// Displays a toast message using the FlutterToast library.
  void _onFetchMeEventError() {
    Fluttertoast.showToast(
        msg: Provider.of<EditProfileProvider>(context, listen: false)
                .getMeResp
                .message ??
            ''.toString());
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapTelevision(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    // ignore: unused_local_variable
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
