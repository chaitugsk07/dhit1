import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/comments_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/comments_screen/models/comments_model.dart';
part 'comments_event.dart';
part 'comments_state.dart';

/// A bloc that manages the state of a Comments according to the event that is dispatched to it.
class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc(CommentsState initialState) : super(initialState) {
    on<CommentsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CommentsInitialEvent event,
    Emitter<CommentsState> emit,
  ) async {
    emit(state.copyWith(
        commentsModelObj: state.commentsModelObj?.copyWith(
      commentsItemList: fillCommentsItemList(),
    )));
  }

  List<CommentsItemModel> fillCommentsItemList() {
    return [
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteSecondarycontainer),
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteGray500),
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteSecondarycontainer),
      CommentsItemModel(
          name: "Billy Green",
          time: "20min ago",
          copy:
              "Awesome Edward, remember that five tips for low cost holidays I sent you?",
          image: ImageConstant.imgFavoriteSecondarycontainer)
    ];
  }
}
