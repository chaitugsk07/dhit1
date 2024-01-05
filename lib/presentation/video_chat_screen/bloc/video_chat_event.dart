// ignore_for_file: must_be_immutable

part of 'video_chat_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoChat widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoChatEvent extends Equatable {}

/// Event that is dispatched when the VideoChat widget is first created.
class VideoChatInitialEvent extends VideoChatEvent {
  @override
  List<Object?> get props => [];
}
