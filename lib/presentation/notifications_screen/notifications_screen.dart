import 'bloc/notifications_bloc.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/custom_app_bar.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_elevated_button.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_icon_button.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
        create: (context) => NotificationsBloc(
            NotificationsState(notificationsModelObj: NotificationsModel()))
          ..add(NotificationsInitialEvent()),
        child: NotificationsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 40.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text("lbl_notifications".tr,
                              style: CustomTextStyles.titleMediumWhiteA700),
                          Container(
                              width: 35.h,
                              margin: EdgeInsets.only(left: 1.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.h, vertical: 2.v),
                              decoration: AppDecoration.error.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Text("lbl_03".tr,
                                  style: CustomTextStyles.bodySmallWhiteA700))
                        ])),
                    SizedBox(height: 17.v),
                    _buildNotification01(context),
                    SizedBox(height: 24.v),
                    _buildNotification02(context),
                    SizedBox(height: 24.v),
                    _buildNotification3(context),
                    SizedBox(height: 24.v),
                    _buildNotification2(context),
                    SizedBox(height: 24.v),
                    _buildNotification03(context),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgButtonIconWhiteA700,
            margin: EdgeInsets.fromLTRB(28.h, 9.v, 309.h, 9.v)));
  }

  /// Section Widget
  Widget _buildNotification01(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 8.adaptSize,
          width: 8.adaptSize,
          margin: EdgeInsets.only(top: 20.v, bottom: 21.v),
          decoration: BoxDecoration(
              color: theme.colorScheme.onError,
              borderRadius: BorderRadius.circular(4.h))),
      CustomImageView(
          imagePath: ImageConstant.imgPlay,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(left: 10.h, top: 10.v, bottom: 11.v)),
      Padding(
          padding: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 15.v),
          child: _buildSeven(context,
              username: "lbl_gunther_ackner".tr,
              copy: "msg_liked_your_photo".tr)),
      Padding(
          padding: EdgeInsets.only(left: 4.h, top: 16.v, bottom: 18.v),
          child:
              Text("lbl_4min".tr, style: CustomTextStyles.bodySmallWhiteA700)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgPhoto,
          height: 49.adaptSize,
          width: 49.adaptSize,
          radius: BorderRadius.circular(8.h))
    ]);
  }

  /// Section Widget
  Widget _buildAdd(BuildContext context) {
    return CustomElevatedButton(
        width: 66.h,
        text: "lbl_add".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkWhiteA700,
                height: 14.adaptSize,
                width: 14.adaptSize)));
  }

  /// Section Widget
  Widget _buildIgnore(BuildContext context) {
    return CustomElevatedButton(
        width: 80.h,
        text: "lbl_ignore".tr,
        margin: EdgeInsets.only(left: 14.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCloseWhiteA700,
                height: 14.adaptSize,
                width: 14.adaptSize)),
        buttonStyle: CustomButtonStyles.fillOnPrimary);
  }

  /// Section Widget
  Widget _buildNotification02(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.only(top: 10.v, bottom: 29.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError,
                    borderRadius: BorderRadius.circular(4.h))),
            CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 28.adaptSize,
                width: 28.adaptSize,
                margin: EdgeInsets.only(left: 10.h, bottom: 19.v)),
            Padding(
                padding: EdgeInsets.only(left: 10.h, top: 5.v),
                child: _buildThirteen(context,
                    username: "lbl_marriet_miles".tr,
                    time: "lbl_4min".tr,
                    copy: "msg_sent_you_a_friend".tr)),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 6.v, bottom: 3.v),
                child: CustomIconButton(
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillDeepPurple,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsWhiteA700)))
          ]),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 56.h),
              child: Row(children: [_buildAdd(context), _buildIgnore(context)]))
        ]));
  }

  /// Section Widget
  Widget _buildAdd1(BuildContext context) {
    return CustomElevatedButton(
        width: 66.h,
        text: "lbl_add".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkWhiteA700,
                height: 14.adaptSize,
                width: 14.adaptSize)));
  }

  /// Section Widget
  Widget _buildIgnore1(BuildContext context) {
    return CustomElevatedButton(
        width: 80.h,
        text: "lbl_ignore".tr,
        margin: EdgeInsets.only(left: 14.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCloseWhiteA700,
                height: 14.adaptSize,
                width: 14.adaptSize)),
        buttonStyle: CustomButtonStyles.fillOnPrimary);
  }

  /// Section Widget
  Widget _buildNotification3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.only(top: 10.v, bottom: 29.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError,
                    borderRadius: BorderRadius.circular(4.h))),
            CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 28.adaptSize,
                width: 28.adaptSize,
                margin: EdgeInsets.only(left: 10.h, bottom: 19.v)),
            Padding(
                padding: EdgeInsets.only(left: 10.h, top: 5.v),
                child: _buildThirteen(context,
                    username: "lbl_marriet_miles".tr,
                    time: "lbl_4min".tr,
                    copy: "msg_sent_you_a_friend".tr)),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 6.v, bottom: 3.v),
                child: CustomIconButton(
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillDeepPurple,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgFavoriteWhiteA700)))
          ]),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 56.h),
              child:
                  Row(children: [_buildAdd1(context), _buildIgnore1(context)]))
        ]));
  }

  /// Section Widget
  Widget _buildNotification2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 10.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError,
                    borderRadius: BorderRadius.circular(4.h))),
            CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 28.adaptSize,
                width: 28.adaptSize,
                margin: EdgeInsets.only(left: 10.h)),
            Padding(
                padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 4.v),
                child: _buildSeven(context,
                    username: "lbl_gunther_ackner".tr,
                    copy: "msg_liked_your_photo".tr)),
            Padding(
                padding: EdgeInsets.only(left: 4.h, top: 6.v, bottom: 7.v),
                child: Text("lbl_4min".tr,
                    style: CustomTextStyles.bodySmallWhiteA700))
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgPhoto49x49,
          height: 49.adaptSize,
          width: 49.adaptSize,
          radius: BorderRadius.circular(8.h))
    ]);
  }

  /// Section Widget
  Widget _buildAdded(BuildContext context) {
    return CustomElevatedButton(
        width: 83.h,
        text: "lbl_added".tr,
        margin: EdgeInsets.only(left: 38.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkWhiteA700,
                height: 14.adaptSize,
                width: 14.adaptSize)));
  }

  /// Section Widget
  Widget _buildNotification03(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 18.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgPlay,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    margin: EdgeInsets.only(bottom: 19.v)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h, top: 5.v),
                    child: _buildThirteen(context,
                        username: "lbl_marriet_miles".tr,
                        time: "lbl_4min".tr,
                        copy: "msg_sent_you_a_friend".tr)),
                Padding(
                    padding: EdgeInsets.only(left: 56.h, top: 6.v, bottom: 3.v),
                    child: CustomIconButton(
                        height: 38.v,
                        width: 40.h,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.fillDeepPurple,
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgSettingsWhiteA70038x40)))
              ]),
              SizedBox(height: 21.v),
              _buildAdded(context)
            ])));
  }

  /// Common widget
  Widget _buildThirteen(
    BuildContext context, {
    required String username,
    required String time,
    required String copy,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Text(username,
            style: CustomTextStyles.titleSmallWhiteA700Bold
                .copyWith(color: appTheme.whiteA700)),
        Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(time,
                style: CustomTextStyles.bodySmallWhiteA700
                    .copyWith(color: appTheme.whiteA700)))
      ]),
      SizedBox(height: 8.v),
      Text(copy,
          style: CustomTextStyles.bodyMediumWhiteA700
              .copyWith(color: appTheme.whiteA700))
    ]);
  }

  /// Common widget
  Widget _buildSeven(
    BuildContext context, {
    required String username,
    required String copy,
  }) {
    return Column(children: [
      Text(username,
          style: CustomTextStyles.titleSmallWhiteA700Bold
              .copyWith(color: appTheme.whiteA700)),
      SizedBox(height: 4.v),
      Text(copy,
          style: CustomTextStyles.bodyMediumWhiteA700
              .copyWith(color: appTheme.whiteA700))
    ]);
  }
}
