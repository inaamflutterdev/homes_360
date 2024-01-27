import 'package:flutter/material.dart';
import 'package:homes360/presentation/past_tours_screen/models/past_tours_model.dart';

/// A provider class for the PastToursScreen.
///
/// This provider manages the state of the PastToursScreen, including the
/// current pastToursModelObj

// ignore_for_file: must_be_immutable
class PastToursProvider extends ChangeNotifier {
  PastToursModel pastToursModelObj = PastToursModel();

  bool complete = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeCheckBox1(bool value) {
    complete = value;
    notifyListeners();
  }
}
