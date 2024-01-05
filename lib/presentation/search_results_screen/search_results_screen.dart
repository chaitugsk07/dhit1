import 'bloc/search_results_bloc.dart';
import 'models/search_results_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/custom_app_bar.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_outlined_button.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/single_post_bottomsheet/single_post_bottomsheet.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsBloc>(
        create: (context) => SearchResultsBloc(
            SearchResultsState(searchResultsModelObj: SearchResultsModel()))
          ..add(SearchResultsInitialEvent()),
        child: SearchResultsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 10.v),
                  _buildPeople(context),
                  SizedBox(height: 25.v),
                  _buildPosts(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 84.v,
        leadingWidth: 66.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgButtonIcon,
            margin: EdgeInsets.only(left: 28.h, top: 15.v, bottom: 31.v),
            onTap: () {
              onTapButtonIcon(context);
            }),
        title: BlocSelector<SearchResultsBloc, SearchResultsState,
                TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarTitleSearchviewOne(
                  margin: EdgeInsets.only(left: 10.h),
                  hintText: "lbl_nass".tr,
                  controller: searchController);
            }),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_people".tr, style: theme.textTheme.titleLarge)),
      SizedBox(height: 12.v),
      _buildUser04(context),
      SizedBox(height: 8.v),
      _buildUser04(context)
    ]);
  }

  /// Section Widget
  Widget _buildPeople(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildFortyEight(context),
      SizedBox(height: 12.v),
      CustomOutlinedButton(
          height: 30.v,
          width: 97.h,
          text: "lbl_see_more".tr,
          rightIcon: Container(
              margin: EdgeInsets.only(),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowright,
                  height: 14.adaptSize,
                  width: 14.adaptSize)),
          buttonStyle: CustomButtonStyles.outlineBlueGray,
          buttonTextStyle: theme.textTheme.titleSmall!)
    ]);
  }

  /// Section Widget
  Widget _buildPosts(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_posts".tr, style: theme.textTheme.titleLarge),
      SizedBox(height: 15.v),
      GestureDetector(
          onTap: () {
            onTapCard03(context);
          },
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 16.v),
              decoration: AppDecoration.white
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(right: 17.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 136.h,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPlay,
                                                height: 33.v,
                                                width: 38.h),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_katherine_cole".tr,
                                                      style: theme.textTheme
                                                          .titleSmall),
                                                  SizedBox(height: 5.v),
                                                  Text("lbl_5_min_ago".tr,
                                                      style: theme
                                                          .textTheme.bodySmall)
                                                ])
                                          ])),
                                  SizedBox(
                                      height: 33.v,
                                      child: VerticalDivider(
                                          width: 4.h,
                                          thickness: 4.v,
                                          indent: 11.h,
                                          endIndent: 6.h))
                                ]))),
                    SizedBox(height: 25.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage119x283,
                        height: 119.v,
                        width: 283.h,
                        radius: BorderRadius.circular(8.h)),
                    SizedBox(height: 23.v),
                    Container(
                        width: 276.h,
                        margin: EdgeInsets.only(right: 6.h),
                        child: Text("msg_the_best_fashion".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!
                                .copyWith(height: 1.38))),
                    SizedBox(height: 49.v),
                    Padding(
                        padding: EdgeInsets.only(left: 6.h, right: 11.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 46.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFavoriteGray500,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 1.v)),
                                        Text("lbl_326".tr,
                                            style: theme.textTheme.titleSmall)
                                      ])),
                              Container(
                                  width: 45.h,
                                  margin: EdgeInsets.only(left: 27.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgInstagram,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 1.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 6.h),
                                            child: Text("lbl_148".tr,
                                                style:
                                                    theme.textTheme.titleSmall))
                                      ])),
                              Spacer(),
                              Text("lbl_share".tr,
                                  style: theme.textTheme.titleSmall),
                              CustomImageView(
                                  imagePath: ImageConstant.imgQuestion,
                                  height: 14.adaptSize,
                                  width: 14.adaptSize)
                            ]))
                  ])))
    ]);
  }

  /// Common widget
  Widget _buildUser04(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 19.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPlay,
              height: 38.adaptSize,
              width: 38.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_logan_nasser".tr,
                        style: theme.textTheme.titleSmall),
                    SizedBox(height: 3.v),
                    Text("lbl_louisaingram".tr,
                        style: theme.textTheme.bodySmall)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgChipChipIconLeft,
              height: 28.adaptSize,
              width: 28.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 5.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapButtonIcon(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [SinglePostBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapCard03(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => SinglePostBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
