/// This class is used in the [options_item_widget] screen.
class OptionsItemModel {
  OptionsItemModel({
    this.freeWiFi,
    this.isSelected,
  }) {
    freeWiFi = freeWiFi ?? "Free WiFi";
    isSelected = isSelected ?? false;
  }

  String? freeWiFi;

  bool? isSelected;
}
