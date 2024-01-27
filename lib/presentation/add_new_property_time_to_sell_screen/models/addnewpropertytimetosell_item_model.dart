/// This class is used in the [addnewpropertytimetosell_item_widget] screen.
class AddnewpropertytimetosellItemModel {
  AddnewpropertytimetosellItemModel({
    this.duration,
    this.id,
  }) {
    duration = duration ?? "Within 3 days";
    id = id ?? "";
  }

  String? duration;

  String? id;
}
