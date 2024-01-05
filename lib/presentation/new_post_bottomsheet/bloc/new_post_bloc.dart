import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/new_post_bottomsheet/models/new_post_model.dart';
part 'new_post_event.dart';
part 'new_post_state.dart';

/// A bloc that manages the state of a NewPost according to the event that is dispatched to it.
class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  NewPostBloc(NewPostState initialState) : super(initialState) {
    on<NewPostInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewPostInitialEvent event,
    Emitter<NewPostState> emit,
  ) async {}
}
