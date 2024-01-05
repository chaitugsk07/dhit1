import '../models/search_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(
    this.searchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchItemModel searchItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: searchItemModelObj?.edwardFord,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            searchItemModelObj.username!,
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: searchItemModelObj?.edwardFord1,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: searchItemModelObj?.edwardFord2,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            searchItemModelObj.username1!,
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: searchItemModelObj?.edwardFord3,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: searchItemModelObj?.edwardFord4,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            searchItemModelObj.username2!,
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 229.v,
              width: 154.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: searchItemModelObj?.edwardFord5,
                    height: 229.v,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 28.h,
                        vertical: 20.v,
                      ),
                      decoration: AppDecoration.linear.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 121.v),
                          CustomImageView(
                            imagePath: searchItemModelObj?.edwardFord6,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            searchItemModelObj.username3!,
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
