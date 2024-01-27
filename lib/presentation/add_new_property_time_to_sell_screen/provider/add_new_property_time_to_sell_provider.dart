import 'package:flutter/material.dart';
import 'package:homes360/presentation/add_new_property_time_to_sell_screen/models/add_new_property_time_to_sell_model.dart';

/// A provider class for the AddNewPropertyTimeToSellScreen.
///
/// This provider manages the state of the AddNewPropertyTimeToSellScreen, including the
/// current addNewPropertyTimeToSellModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyTimeToSellProvider extends ChangeNotifier {
  AddNewPropertyTimeToSellModel addNewPropertyTimeToSellModelObj =
      AddNewPropertyTimeToSellModel();

  @override
  void dispose() {
    super.dispose();
  }
}
