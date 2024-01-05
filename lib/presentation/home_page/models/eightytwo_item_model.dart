import '../../../core/app_export.dart';

/// This class is used in the [eightytwo_item_widget] screen.
class EightytwoItemModel {
  EightytwoItemModel({
    this.name,
    this.time,
    this.copy,
    this.label,
    this.label1,
    this.label2,
    this.id,
  }) {
    name = name ?? "Dustin Houston";
    time = time ?? "5 min ago";
    copy = copy ?? "Whether its a driving tour 😂";
    label = label ?? "326";
    label1 = label1 ?? "148";
    label2 = label2 ?? "Share";
    id = id ?? "";
  }

  String? name;

  String? time;

  String? copy;

  String? label;

  String? label1;

  String? label2;

  String? id;
}
