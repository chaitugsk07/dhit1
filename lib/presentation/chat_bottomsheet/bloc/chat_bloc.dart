import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/chat_bottomsheet/models/chat_model.dart';
part 'chat_event.dart';
part 'chat_state.dart';

/// A bloc that manages the state of a Chat according to the event that is dispatched to it.
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(ChatState initialState) : super(initialState) {
    on<ChatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatInitialEvent event,
    Emitter<ChatState> emit,
  ) async {
    NavigatorService.pushNamed(
      AppRoutes.videoChatScreen,
    );
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onReady(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
