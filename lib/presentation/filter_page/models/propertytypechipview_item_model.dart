/// This class is used in the [propertytypechipview_item_widget] screen.
class PropertytypechipviewItemModel {
  PropertytypechipviewItemModel({
    this.home,
    this.isSelected,
  }) {
    home = home ?? "Home";
    isSelected = isSelected ?? false;
  }

  String? home;

  bool? isSelected;
}
