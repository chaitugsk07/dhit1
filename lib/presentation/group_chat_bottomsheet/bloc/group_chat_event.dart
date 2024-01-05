// ignore_for_file: must_be_immutable

part of 'group_chat_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GroupChat widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GroupChatEvent extends Equatable {}

/// Event that is dispatched when the GroupChat widget is first created.
class GroupChatInitialEvent extends GroupChatEvent {
  @override
  List<Object?> get props => [];
}
