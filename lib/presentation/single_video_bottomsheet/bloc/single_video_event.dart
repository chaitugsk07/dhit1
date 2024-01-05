// ignore_for_file: must_be_immutable

part of 'single_video_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleVideo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleVideoEvent extends Equatable {}

/// Event that is dispatched when the SingleVideo widget is first created.
class SingleVideoInitialEvent extends SingleVideoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SingleVideoEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
