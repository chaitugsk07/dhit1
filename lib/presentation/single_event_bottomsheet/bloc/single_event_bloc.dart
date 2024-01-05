import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/single_event_bottomsheet/models/single_event_model.dart';
part 'single_event_event.dart';
part 'single_event_state.dart';

/// A bloc that manages the state of a SingleEvent according to the event that is dispatched to it.
class SingleEventBloc extends Bloc<SingleEventEvent, SingleEventState> {
  SingleEventBloc(SingleEventState initialState) : super(initialState) {
    on<SingleEventInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleEventInitialEvent event,
    Emitter<SingleEventState> emit,
  ) async {}
}
