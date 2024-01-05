// ignore_for_file: must_be_immutable

part of 'archived_message_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ArchivedMessage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArchivedMessageEvent extends Equatable {}

/// Event that is dispatched when the ArchivedMessage widget is first created.
class ArchivedMessageInitialEvent extends ArchivedMessageEvent {
  @override
  List<Object?> get props => [];
}
