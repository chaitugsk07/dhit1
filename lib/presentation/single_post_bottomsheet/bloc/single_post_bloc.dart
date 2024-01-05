import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/single_post_bottomsheet/models/single_post_model.dart';
part 'single_post_event.dart';
part 'single_post_state.dart';

/// A bloc that manages the state of a SinglePost according to the event that is dispatched to it.
class SinglePostBloc extends Bloc<SinglePostEvent, SinglePostState> {
  SinglePostBloc(SinglePostState initialState) : super(initialState) {
    on<SinglePostInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SinglePostInitialEvent event,
    Emitter<SinglePostState> emit,
  ) async {}
}
