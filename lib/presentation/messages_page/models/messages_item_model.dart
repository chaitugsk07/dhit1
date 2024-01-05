import '../../../core/app_export.dart';

/// This class is used in the [messages_item_widget] screen.
class MessagesItemModel {
  MessagesItemModel({
    this.billyGreen,
    this.username,
    this.message,
    this.time,
    this.notifications,
    this.id,
  }) {
    billyGreen = billyGreen ?? ImageConstant.imgAvatar;
    username = username ?? "Billy Green";
    message = message ?? "Thank you for sharing";
    time = time ?? "3:03pm";
    notifications = notifications ?? "1";
    id = id ?? "";
  }

  String? billyGreen;

  String? username;

  String? message;

  String? time;

  String? notifications;

  String? id;
}
