import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

/// A bloc that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc(NotificationsState initialState) : super(initialState) {
    on<NotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsInitialEvent event,
    Emitter<NotificationsState> emit,
  ) async {}

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
