// ignore_for_file: must_be_immutable

part of 'comments_bloc.dart';

/// Represents the state of Comments in the application.
class CommentsState extends Equatable {
  CommentsState({this.commentsModelObj});

  CommentsModel? commentsModelObj;

  @override
  List<Object?> get props => [
        commentsModelObj,
      ];
  CommentsState copyWith({CommentsModel? commentsModelObj}) {
    return CommentsState(
      commentsModelObj: commentsModelObj ?? this.commentsModelObj,
    );
  }
}
