/// This class is used in the [optionschipview_item_widget] screen.
class OptionschipviewItemModel {
  OptionschipviewItemModel({
    this.freeWiFi,
    this.isSelected,
  }) {
    freeWiFi = freeWiFi ?? "Free WiFi";
    isSelected = isSelected ?? false;
  }

  String? freeWiFi;

  bool? isSelected;
}
