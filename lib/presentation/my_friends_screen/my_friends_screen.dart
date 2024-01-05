import '../my_friends_screen/widgets/myfriends_item_widget.dart';
import 'bloc/my_friends_bloc.dart';
import 'models/my_friends_model.dart';
import 'models/myfriends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_title_searchview_two.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/custom_app_bar.dart';

class MyFriendsScreen extends StatelessWidget {
  const MyFriendsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyFriendsBloc>(
        create: (context) =>
            MyFriendsBloc(MyFriendsState(myFriendsModelObj: MyFriendsModel()))
              ..add(MyFriendsInitialEvent()),
        child: MyFriendsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 28.h, top: 16.v, right: 28.h),
                child: BlocSelector<MyFriendsBloc, MyFriendsState,
                        MyFriendsModel?>(
                    selector: (state) => state.myFriendsModelObj,
                    builder: (context, myFriendsModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 8.v);
                          },
                          itemCount:
                              myFriendsModelObj?.myfriendsItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            MyfriendsItemModel model =
                                myFriendsModelObj?.myfriendsItemList[index] ??
                                    MyfriendsItemModel();
                            return MyfriendsItemWidget(model);
                          });
                    }))));
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
        title:
            BlocSelector<MyFriendsBloc, MyFriendsState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return AppbarTitleSearchviewTwo(
                      margin: EdgeInsets.only(left: 10.h),
                      hintText: "msg_search_in_friends".tr,
                      controller: searchController);
                }),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapButtonIcon(BuildContext context) {
    NavigatorService.goBack();
  }
}
