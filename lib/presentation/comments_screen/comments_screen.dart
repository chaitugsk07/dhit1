import '../comments_screen/widgets/comments_item_widget.dart';
import 'bloc/comments_bloc.dart';
import 'models/comments_item_model.dart';
import 'models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_title.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/custom_app_bar.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CommentsBloc>(
      create: (context) => CommentsBloc(CommentsState(
        commentsModelObj: CommentsModel(),
      ))
        ..add(CommentsInitialEvent()),
      child: CommentsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_comments_148".tr,
                style: CustomTextStyles.titleMediumWhiteA700,
              ),
              SizedBox(height: 28.v),
              _buildComments(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgButtonIconWhiteA700,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_title".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRightButton,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildComments(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: BlocSelector<CommentsBloc, CommentsState, CommentsModel?>(
        selector: (state) => state.commentsModelObj,
        builder: (context, commentsModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: commentsModelObj?.commentsItemList.length ?? 0,
            itemBuilder: (context, index) {
              CommentsItemModel model =
                  commentsModelObj?.commentsItemList[index] ??
                      CommentsItemModel();
              return CommentsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
