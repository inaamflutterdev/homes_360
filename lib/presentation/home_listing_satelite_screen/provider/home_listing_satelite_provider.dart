import 'package:flutter/material.dart';
import 'package:homes360/presentation/home_listing_satelite_screen/models/home_listing_satelite_model.dart';

/// A provider class for the HomeListingSateliteScreen.
///
/// This provider manages the state of the HomeListingSateliteScreen, including the
/// current homeListingSateliteModelObj

// ignore_for_file: must_be_immutable
class HomeListingSateliteProvider extends ChangeNotifier {
  HomeListingSateliteModel homeListingSateliteModelObj =
      HomeListingSateliteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
