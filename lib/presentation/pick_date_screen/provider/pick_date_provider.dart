import 'package:flutter/material.dart';
import 'package:homes360/presentation/pick_date_screen/models/pick_date_model.dart';

/// A provider class for the PickDateScreen.
///
/// This provider manages the state of the PickDateScreen, including the
/// current pickDateModelObj

// ignore_for_file: must_be_immutable
class PickDateProvider extends ChangeNotifier {
  PickDateModel pickDateModelObj = PickDateModel();

  DateTime? selectedDatesFromCalendar1;

  @override
  void dispose() {
    super.dispose();
  }
}
