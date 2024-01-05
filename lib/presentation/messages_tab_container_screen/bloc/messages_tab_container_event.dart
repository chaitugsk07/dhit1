// ignore_for_file: must_be_immutable

part of 'messages_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessagesTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessagesTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MessagesTabContainer widget is first created.
class MessagesTabContainerInitialEvent extends MessagesTabContainerEvent {
  @override
  List<Object?> get props => [];
}
