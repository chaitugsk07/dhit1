import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tags_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/single_video_bottomsheet/models/single_video_model.dart';
part 'single_video_event.dart';
part 'single_video_state.dart';

/// A bloc that manages the state of a SingleVideo according to the event that is dispatched to it.
class SingleVideoBloc extends Bloc<SingleVideoEvent, SingleVideoState> {
  SingleVideoBloc(SingleVideoState initialState) : super(initialState) {
    on<SingleVideoInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    SingleVideoInitialEvent event,
    Emitter<SingleVideoState> emit,
  ) async {
    emit(state.copyWith(
        singleVideoModelObj: state.singleVideoModelObj?.copyWith(
      tagsItemList: fillTagsItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SingleVideoState> emit,
  ) {
    List<TagsItemModel> newList =
        List<TagsItemModel>.from(state.singleVideoModelObj!.tagsItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        singleVideoModelObj:
            state.singleVideoModelObj?.copyWith(tagsItemList: newList)));
  }

  List<TagsItemModel> fillTagsItemList() {
    return List.generate(5, (index) => TagsItemModel());
  }
}
