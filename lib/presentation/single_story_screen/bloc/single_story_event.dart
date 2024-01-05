// ignore_for_file: must_be_immutable

part of 'single_story_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleStory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleStoryEvent extends Equatable {}

/// Event that is dispatched when the SingleStory widget is first created.
class SingleStoryInitialEvent extends SingleStoryEvent {
  @override
  List<Object?> get props => [];
}
