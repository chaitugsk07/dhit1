import '../../../core/app_export.dart';

/// This class is used in the [archivedmessage_item_widget] screen.
class ArchivedmessageItemModel {
  ArchivedmessageItemModel({
    this.image,
    this.image1,
    this.more,
    this.username,
    this.message,
    this.time,
    this.notifications,
    this.id,
  }) {
    image = image ?? ImageConstant.imgPlay;
    image1 = image1 ?? ImageConstant.imgImage28x28;
    more = more ?? "+9";
    username = username ?? "Close Friends";
    message = message ?? "Thank you for sharing";
    time = time ?? "3:03pm";
    notifications = notifications ?? "1";
    id = id ?? "";
  }

  String? image;

  String? image1;

  String? more;

  String? username;

  String? message;

  String? time;

  String? notifications;

  String? id;
}
