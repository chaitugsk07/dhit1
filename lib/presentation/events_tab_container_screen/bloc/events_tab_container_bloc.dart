import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/events_tab_container_screen/models/events_tab_container_model.dart';
part 'events_tab_container_event.dart';
part 'events_tab_container_state.dart';

/// A bloc that manages the state of a EventsTabContainer according to the event that is dispatched to it.
class EventsTabContainerBloc
    extends Bloc<EventsTabContainerEvent, EventsTabContainerState> {
  EventsTabContainerBloc(EventsTabContainerState initialState)
      : super(initialState) {
    on<EventsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EventsTabContainerInitialEvent event,
    Emitter<EventsTabContainerState> emit,
  ) async {}
}
