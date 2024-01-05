import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messages_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/messages_page/models/messages_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

/// A bloc that manages the state of a Messages according to the event that is dispatched to it.
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessagesInitialEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(
        messagesModelObj: state.messagesModelObj
            ?.copyWith(messagesItemList: fillMessagesItemList())));
  }

  List<MessagesItemModel> fillMessagesItemList() {
    return [
      MessagesItemModel(
          billyGreen: ImageConstant.imgAvatar,
          username: "Billy Green",
          message: "Thank you for sharing",
          time: "3:03pm",
          notifications: "1"),
      MessagesItemModel(
          billyGreen: ImageConstant.imgImage8,
          username: "Billy Green",
          message: "Thank you for sharing",
          time: "3:03pm",
          notifications: "1"),
      MessagesItemModel(
          billyGreen: ImageConstant.imgAvatar48x48,
          username: "Billy Green",
          message: "Thank you for sharing",
          time: "3:03pm",
          notifications: "1"),
      MessagesItemModel(
          billyGreen: ImageConstant.imgAvatar1,
          username: "Billy Green",
          message: "Thank you for sharing"),
      MessagesItemModel(
          billyGreen: ImageConstant.imgAvatar2,
          username: "Billy Green",
          message: "Thank you for sharing"),
      MessagesItemModel(
          billyGreen: ImageConstant.imgAvatar3,
          username: "Billy Green",
          message: "Thank you for sharing")
    ];
  }
}
