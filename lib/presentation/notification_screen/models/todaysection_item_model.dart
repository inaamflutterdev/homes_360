/// This class is used in the [todaysection_item_widget] screen.
class TodaysectionItemModel {
  TodaysectionItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
