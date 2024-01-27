import 'package:flutter/material.dart';
import 'package:homes360/presentation/add_new_property_decsription_screen/models/add_new_property_decsription_model.dart';

/// A provider class for the AddNewPropertyDecsriptionScreen.
///
/// This provider manages the state of the AddNewPropertyDecsriptionScreen, including the
/// current addNewPropertyDecsriptionModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyDecsriptionProvider extends ChangeNotifier {
  TextEditingController addressController = TextEditingController();

  AddNewPropertyDecsriptionModel addNewPropertyDecsriptionModelObj =
      AddNewPropertyDecsriptionModel();

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
  }
}
