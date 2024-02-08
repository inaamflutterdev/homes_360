class TimeItemModel {
  TimeItemModel({
    this.time,
    this.id,
  }) {
    time = time ?? "9:00 AM";
    id = id ?? "";
  }

  String? time;

  String? id;
}
