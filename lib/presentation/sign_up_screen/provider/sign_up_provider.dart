import 'package:flutter/material.dart';
import 'package:homes360/presentation/sign_up_screen/models/sign_up_model.dart';

/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  SignUpModel signUpModelObj = SignUpModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    fullNameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
