import 'package:flutter/material.dart';
import 'package:homes360/presentation/confirm_request_bottom_sheet_bottomsheet/models/confirm_request_bottom_sheet_model.dart';

/// A provider class for the ConfirmRequestBottomSheetBottomsheet.
///
/// This provider manages the state of the ConfirmRequestBottomSheetBottomsheet, including the
/// current confirmRequestBottomSheetModelObj

// ignore_for_file: must_be_immutable
class ConfirmRequestBottomSheetProvider extends ChangeNotifier {
  ConfirmRequestBottomSheetModel confirmRequestBottomSheetModelObj =
      ConfirmRequestBottomSheetModel();

  @override
  void dispose() {
    super.dispose();
  }
}
