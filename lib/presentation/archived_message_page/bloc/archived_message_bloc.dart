import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/archivedmessage_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/archived_message_page/models/archived_message_model.dart';
part 'archived_message_event.dart';
part 'archived_message_state.dart';

/// A bloc that manages the state of a ArchivedMessage according to the event that is dispatched to it.
class ArchivedMessageBloc
    extends Bloc<ArchivedMessageEvent, ArchivedMessageState> {
  ArchivedMessageBloc(ArchivedMessageState initialState) : super(initialState) {
    on<ArchivedMessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArchivedMessageInitialEvent event,
    Emitter<ArchivedMessageState> emit,
  ) async {
    emit(state.copyWith(
        archivedMessageModelObj: state.archivedMessageModelObj?.copyWith(
            archivedmessageItemList: fillArchivedmessageItemList())));
  }

  List<ArchivedmessageItemModel> fillArchivedmessageItemList() {
    return [
      ArchivedmessageItemModel(
          image: ImageConstant.imgPlay,
          image1: ImageConstant.imgImage28x28,
          more: "+9",
          username: "Close Friends",
          message: "Thank you for sharing",
          time: "3:03pm",
          notifications: "1"),
      ArchivedmessageItemModel(
          image: ImageConstant.imgPlay,
          image1: ImageConstant.imgImage11,
          more: "+9",
          username: "Close Friends",
          message: "Thank you for sharing"),
      ArchivedmessageItemModel(
          username: "Close Friends",
          message: "Thank you for sharing",
          time: "3:03pm",
          notifications: "1")
    ];
  }
}
