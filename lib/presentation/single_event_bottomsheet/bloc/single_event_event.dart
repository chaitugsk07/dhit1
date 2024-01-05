// ignore_for_file: must_be_immutable

part of 'single_event_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleEvent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleEventEvent extends Equatable {}

/// Event that is dispatched when the SingleEvent widget is first created.
class SingleEventInitialEvent extends SingleEventEvent {
  @override
  List<Object?> get props => [];
}
