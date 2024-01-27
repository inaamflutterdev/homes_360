import 'package:flutter/material.dart';
import 'package:homes360/core/app_export.dart';
import 'package:homes360/core/utils/validation_functions.dart';
import 'package:homes360/widgets/app_bar/appbar_subtitle.dart';
import 'package:homes360/widgets/app_bar/custom_app_bar.dart';
import 'package:homes360/widgets/custom_elevated_button.dart';
import 'package:homes360/widgets/custom_outlined_button.dart';
import 'package:homes360/widgets/custom_text_form_field.dart';
import 'provider/sign_in_provider.dart';
import 'package:homes360/domain/googleauth/google_auth_helper.dart';
import 'package:homes360/domain/facebookauth/facebook_auth_helper.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignInProvider(), child: SignInScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
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
                            height: double.maxFinite,
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_sign_in_to_your".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 38.v),
                              _buildPhoneNumber(context),
                              SizedBox(height: 16.v),
                              _buildPassword(context),
                              SizedBox(height: 24.v),
                              _buildSignIn(context),
                              SizedBox(height: 26.v),
                              Text("msg_forgot_password".tr,
                                  style:
                                      CustomTextStyles.titleSmallBluegray500_1),
                              Spacer(),
                              Text("msg_or_continue_with".tr,
                                  style: theme.textTheme.bodyLarge),
                              SizedBox(height: 24.v),
                              _buildGoogle(context),
                              SizedBox(height: 12.v),
                              _buildFacebook(context),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 41.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                                "msg_don_t_have_an_account".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignUp(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text("lbl_sign_up".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary)))
                                      ])),
                              SizedBox(height: 60.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitle(
            text: "lbl_welcome_back".tr, margin: EdgeInsets.only(left: 24.h)));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Selector<SignInProvider, TextEditingController?>(
        selector: (context, provider) => provider.phoneNumberController,
        builder: (context, phoneNumberController, child) {
          return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "lbl_phone_number".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<SignInProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.passwordController,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 20.adaptSize,
                      width: 20.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 49.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v));
    });
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(text: "lbl_sign_in".tr);
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapGoogle(context);
        });
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapFacebook(context);
        });
  }

  onTapGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapFacebook(BuildContext context) async {
    await FacebookAuthHelper()
        .facebookSignInProcess()
        .then((facebookUser) {})
        .catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
