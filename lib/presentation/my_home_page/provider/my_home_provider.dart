import 'package:flutter/material.dart';
import 'package:homes360/presentation/my_home_page/models/my_home_model.dart';

/// A provider class for the MyHomePage.
///
/// This provider manages the state of the MyHomePage, including the
/// current myHomeModelObj

// ignore_for_file: must_be_immutable
class MyHomeProvider extends ChangeNotifier {
  MyHomeModel myHomeModelObj = MyHomeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
