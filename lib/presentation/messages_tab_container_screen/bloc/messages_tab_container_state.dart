// ignore_for_file: must_be_immutable

part of 'messages_tab_container_bloc.dart';

/// Represents the state of MessagesTabContainer in the application.
class MessagesTabContainerState extends Equatable {
  MessagesTabContainerState({this.messagesTabContainerModelObj});

  MessagesTabContainerModel? messagesTabContainerModelObj;

  @override
  List<Object?> get props => [
        messagesTabContainerModelObj,
      ];
  MessagesTabContainerState copyWith(
      {MessagesTabContainerModel? messagesTabContainerModelObj}) {
    return MessagesTabContainerState(
      messagesTabContainerModelObj:
          messagesTabContainerModelObj ?? this.messagesTabContainerModelObj,
    );
  }
}
