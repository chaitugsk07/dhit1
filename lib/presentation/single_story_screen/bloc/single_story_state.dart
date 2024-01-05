// ignore_for_file: must_be_immutable

part of 'single_story_bloc.dart';

/// Represents the state of SingleStory in the application.
class SingleStoryState extends Equatable {
  SingleStoryState({
    this.commentController,
    this.singleStoryModelObj,
  });

  TextEditingController? commentController;

  SingleStoryModel? singleStoryModelObj;

  @override
  List<Object?> get props => [
        commentController,
        singleStoryModelObj,
      ];
  SingleStoryState copyWith({
    TextEditingController? commentController,
    SingleStoryModel? singleStoryModelObj,
  }) {
    return SingleStoryState(
      commentController: commentController ?? this.commentController,
      singleStoryModelObj: singleStoryModelObj ?? this.singleStoryModelObj,
    );
  }
}
