import '../../../core/app_export.dart';

/// This class is used in the [myfriends_item_widget] screen.
class MyfriendsItemModel {
  MyfriendsItemModel({
    this.username,
    this.fullname,
    this.id,
  }) {
    username = username ?? "Logan Nasser";
    fullname = fullname ?? "@louisaingram";
    id = id ?? "";
  }

  String? username;

  String? fullname;

  String? id;
}
