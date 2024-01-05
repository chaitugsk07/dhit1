import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gallery_item_model.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/gallery_page/models/gallery_model.dart';
part 'gallery_event.dart';
part 'gallery_state.dart';

/// A bloc that manages the state of a Gallery according to the event that is dispatched to it.
class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc(GalleryState initialState) : super(initialState) {
    on<GalleryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GalleryInitialEvent event,
    Emitter<GalleryState> emit,
  ) async {
    emit(state.copyWith(
        galleryModelObj: state.galleryModelObj?.copyWith(
      galleryItemList: fillGalleryItemList(),
    )));
  }

  List<GalleryItemModel> fillGalleryItemList() {
    return [
      GalleryItemModel(
          image: ImageConstant.imgImage99x99,
          image1: ImageConstant.imgImage12,
          image2: ImageConstant.imgImage13,
          image3: ImageConstant.imgImage14,
          image4: ImageConstant.imgImage15,
          image5: ImageConstant.imgImage16,
          image6: ImageConstant.imgImage17,
          image7: ImageConstant.imgImage18,
          image8: ImageConstant.imgImage19)
    ];
  }
}
