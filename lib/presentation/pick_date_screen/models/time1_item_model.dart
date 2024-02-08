/// This class is used in the [time1_item_widget] screen.
class Time1ItemModel {
  Time1ItemModel({
    this.time,
    this.id,
  }) {
    time = time ?? "9:00 AM";
    id = id ?? "";
  }

  String? time;

  String? id;
}
