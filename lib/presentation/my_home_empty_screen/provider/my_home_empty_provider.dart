import 'package:flutter/material.dart';
import 'package:homes360/presentation/my_home_empty_screen/models/my_home_empty_model.dart';

/// A provider class for the MyHomeEmptyScreen.
///
/// This provider manages the state of the MyHomeEmptyScreen, including the
/// current myHomeEmptyModelObj

// ignore_for_file: must_be_immutable
class MyHomeEmptyProvider extends ChangeNotifier {
  MyHomeEmptyModel myHomeEmptyModelObj = MyHomeEmptyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
