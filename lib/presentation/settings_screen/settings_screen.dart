import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_leading_iconbutton_three.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_title_image.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/custom_app_bar.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_icon_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 40.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_settings".tr,
                            style: CustomTextStyles.titleLargeWhiteA700),
                        SizedBox(height: 27.v),
                        Row(children: [
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillWhiteA,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLock)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 18.h, top: 10.v, bottom: 7.v),
                              child: Text("lbl_my_account".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700))
                        ]),
                        SizedBox(height: 38.v),
                        Row(children: [
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgIconNotificationWhiteA700)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 18.h, top: 8.v, bottom: 9.v),
                              child: Text("lbl_notifications".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700))
                        ]),
                        SizedBox(height: 38.v),
                        Row(children: [
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgClock)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 18.h, top: 10.v, bottom: 7.v),
                              child: Text("msg_activity_history".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700))
                        ]),
                        SizedBox(height: 38.v),
                        Row(children: [
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgAlarm)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 18.h, top: 10.v, bottom: 7.v),
                              child: Text("msg_billing_and_payment".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700))
                        ]),
                        SizedBox(height: 38.v),
                        Row(children: [
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLocation)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 18.h, top: 10.v, bottom: 7.v),
                              child: Text("msg_security_privacy".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700))
                        ]),
                        SizedBox(height: 38.v),
                        Row(children: [
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUserWhiteA70038x38)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 18.h, top: 10.v, bottom: 7.v),
                              child: Text("lbl_help".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700))
                        ]),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbuttonThree(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 28.h, top: 9.v, bottom: 9.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Row(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgVector3),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 1.v, bottom: 1.v),
                  child: Column(children: [
                    AppbarSubtitleTwo(text: "lbl_marriet_miles".tr),
                    SizedBox(height: 2.v),
                    AppbarSubtitleOne(
                        text: "lbl_online".tr,
                        margin: EdgeInsets.only(right: 36.h))
                  ]))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
