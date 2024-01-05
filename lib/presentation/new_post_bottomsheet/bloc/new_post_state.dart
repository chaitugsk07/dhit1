// ignore_for_file: must_be_immutable

part of 'new_post_bloc.dart';

/// Represents the state of NewPost in the application.
class NewPostState extends Equatable {
  NewPostState({this.newPostModelObj});

  NewPostModel? newPostModelObj;

  @override
  List<Object?> get props => [
        newPostModelObj,
      ];
  NewPostState copyWith({NewPostModel? newPostModelObj}) {
    return NewPostState(
      newPostModelObj: newPostModelObj ?? this.newPostModelObj,
    );
  }
}
