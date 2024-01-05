// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'events_item_model.dart';

/// This class defines the variables used in the [events_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EventsModel extends Equatable {
  EventsModel({this.eventsItemList = const []}) {}

  List<EventsItemModel> eventsItemList;

  EventsModel copyWith({List<EventsItemModel>? eventsItemList}) {
    return EventsModel(
      eventsItemList: eventsItemList ?? this.eventsItemList,
    );
  }

  @override
  List<Object?> get props => [eventsItemList];
}
