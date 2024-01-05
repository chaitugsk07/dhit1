import '../../../core/app_export.dart';

/// This class is used in the [events_item_widget] screen.
class EventsItemModel {
  EventsItemModel({
    this.fashionMeetup,
    this.monday,
    this.decemberCounter,
    this.monday1,
    this.title,
    this.time,
    this.avatarInitials,
    this.id,
  }) {
    fashionMeetup = fashionMeetup ?? ImageConstant.imgImage180x283;
    monday = monday ?? "Monday";
    decemberCounter = decemberCounter ?? "December, 2019";
    monday1 = monday1 ?? ImageConstant.imgIconOptionsGray500;
    title = title ?? "Fashion Meetup";
    time = time ?? "Starts at 9:00am in Los Angeles";
    avatarInitials = avatarInitials ?? "+9";
    id = id ?? "";
  }

  String? fashionMeetup;

  String? monday;

  String? decemberCounter;

  String? monday1;

  String? title;

  String? time;

  String? avatarInitials;

  String? id;
}
