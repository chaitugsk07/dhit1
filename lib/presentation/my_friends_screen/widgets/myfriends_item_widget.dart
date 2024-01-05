import '../models/myfriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore: must_be_immutable
class MyfriendsItemWidget extends StatelessWidget {
  MyfriendsItemWidget(
    this.myfriendsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyfriendsItemModel myfriendsItemModelObj;

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
      child: Row(
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
                  myfriendsItemModelObj.username!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  myfriendsItemModelObj.fullname!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgChipChipIconLeft,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
        ],
      ),
    );
  }
}
