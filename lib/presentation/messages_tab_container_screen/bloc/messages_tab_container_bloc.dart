import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/messages_tab_container_screen/models/messages_tab_container_model.dart';
part 'messages_tab_container_event.dart';
part 'messages_tab_container_state.dart';

/// A bloc that manages the state of a MessagesTabContainer according to the event that is dispatched to it.
class MessagesTabContainerBloc
    extends Bloc<MessagesTabContainerEvent, MessagesTabContainerState> {
  MessagesTabContainerBloc(MessagesTabContainerState initialState)
      : super(initialState) {
    on<MessagesTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessagesTabContainerInitialEvent event,
    Emitter<MessagesTabContainerState> emit,
  ) async {}
}
