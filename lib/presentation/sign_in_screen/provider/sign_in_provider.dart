import 'package:flutter/material.dart';
import 'package:homes360/presentation/sign_in_screen/models/sign_in_model.dart';

/// A provider class for the SignInScreen.
///
/// This provider manages the state of the SignInScreen, including the
/// current signInModelObj

// ignore_for_file: must_be_immutable
class SignInProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  SignInModel signInModelObj = SignInModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
