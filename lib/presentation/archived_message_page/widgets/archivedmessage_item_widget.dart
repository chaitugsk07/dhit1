import '../models/archivedmessage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';

// ignore: must_be_immutable
class ArchivedmessageItemWidget extends StatelessWidget {
  ArchivedmessageItemWidget(
    this.archivedmessageItemModelObj, {
    Key? key,
    this.onTapMessage,
  }) : super(
          key: key,
        );

  ArchivedmessageItemModel archivedmessageItemModelObj;

  VoidCallback? onTapMessage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMessage!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 51.adaptSize,
            width: 51.adaptSize,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: archivedmessageItemModelObj?.image,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  alignment: Alignment.topLeft,
                ),
                CustomImageView(
                  imagePath: archivedmessageItemModelObj?.image1,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.topRight,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 28.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      archivedmessageItemModelObj.more!,
                      style: CustomTextStyles.labelLargeWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 4.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  archivedmessageItemModelObj.username!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  archivedmessageItemModelObj.message!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 8.v,
            ),
            child: Column(
              children: [
                Text(
                  archivedmessageItemModelObj.time!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 18.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.error.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      archivedmessageItemModelObj.notifications!,
                      style: CustomTextStyles.labelMediumMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
