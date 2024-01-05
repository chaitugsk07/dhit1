import '../models/gallery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  GalleryItemWidget(
    this.galleryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalleryItemModel galleryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(right: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image1,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image2,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image3,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(right: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image4,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image5,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image6,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(right: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image7,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.h),
              ),
            ),
            Expanded(
              child: CustomImageView(
                imagePath: galleryItemModelObj?.image8,
                height: 99.adaptSize,
                width: 99.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(left: 5.h),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
