import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/events_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/events_page/models/events_model.dart';
part 'events_event.dart';
part 'events_state.dart';

/// A bloc that manages the state of a Events according to the event that is dispatched to it.
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(EventsState initialState) : super(initialState) {
    on<EventsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EventsInitialEvent event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(
        eventsModelObj: state.eventsModelObj?.copyWith(
      eventsItemList: fillEventsItemList(),
    )));
  }

  List<EventsItemModel> fillEventsItemList() {
    return [
      EventsItemModel(
          fashionMeetup: ImageConstant.imgImage180x283,
          monday: "Monday",
          decemberCounter: "December, 2019",
          monday1: ImageConstant.imgIconOptionsGray500,
          title: "Fashion Meetup",
          time: "Starts at 9:00am in Los Angeles",
          avatarInitials: "+9"),
      EventsItemModel(
          fashionMeetup: ImageConstant.imgImage9,
          monday: "Monday",
          decemberCounter: "December, 2019",
          monday1: ImageConstant.imgOptionsGray500,
          title: "Fashion Meetup",
          time: "Starts at 9:00am in Los Angeles",
          avatarInitials: "+9")
    ];
  }
}
