import 'package:flutter/material.dart';
import 'package:homes360/presentation/verify_phone_number_screen/models/verify_phone_number_model.dart';

/// A provider class for the VerifyPhoneNumberScreen.
///
/// This provider manages the state of the VerifyPhoneNumberScreen, including the
/// current verifyPhoneNumberModelObj

// ignore_for_file: must_be_immutable
class VerifyPhoneNumberProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  VerifyPhoneNumberModel verifyPhoneNumberModelObj = VerifyPhoneNumberModel();

  @override
  void dispose() {
    super.dispose();
  }
}
