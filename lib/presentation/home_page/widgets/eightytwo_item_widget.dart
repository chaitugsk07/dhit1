import '../models/eightytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class EightytwoItemWidget extends StatelessWidget {
  EightytwoItemWidget(
    this.eightytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightytwoItemModel eightytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 38.adaptSize,
                width: 38.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eightytwoItemModelObj.name!,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      eightytwoItemModelObj.time!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgOptions,
                height: 38.adaptSize,
                width: 38.adaptSize,
              ),
            ],
          ),
          SizedBox(height: 21.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              eightytwoItemModelObj.copy!,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPhoto1,
                height: 160.v,
                width: 193.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPhoto2,
                    height: 75.v,
                    width: 80.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  CustomElevatedButton(
                    height: 75.v,
                    width: 80.h,
                    text: "lbl_17".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 5.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCamera,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillGray,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 11.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 46.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Text(
                        eightytwoItemModelObj.label!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 45.h,
                  margin: EdgeInsets.only(left: 28.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconComment,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          eightytwoItemModelObj.label1!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 58.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        eightytwoItemModelObj.label2!,
                        style: theme.textTheme.titleSmall,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgQuestion,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
