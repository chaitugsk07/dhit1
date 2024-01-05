import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/single_story_screen/models/single_story_model.dart';
part 'single_story_event.dart';
part 'single_story_state.dart';

/// A bloc that manages the state of a SingleStory according to the event that is dispatched to it.
class SingleStoryBloc extends Bloc<SingleStoryEvent, SingleStoryState> {
  SingleStoryBloc(SingleStoryState initialState) : super(initialState) {
    on<SingleStoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleStoryInitialEvent event,
    Emitter<SingleStoryState> emit,
  ) async {
    emit(state.copyWith(
      commentController: TextEditingController(),
    ));
  }
}
