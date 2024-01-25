import 'package:flutter/material.dart';
import 'package:homes360/presentation/add_new_property_details_screen/models/add_new_property_details_model.dart';

///
/// This provider manages the state of the AddNewPropertyDetailsScreen, including the
/// current addNewPropertyDetailsModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyDetailsProvider extends ChangeNotifier {
  AddNewPropertyDetailsModel addNewPropertyDetailsModelObj =
      AddNewPropertyDetailsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
