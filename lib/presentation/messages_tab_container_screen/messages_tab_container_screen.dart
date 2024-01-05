import 'bloc/messages_tab_container_bloc.dart';
import 'models/messages_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/core/app_export.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/home_page/home_page.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/messages_page/messages_page.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_subtitle.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/app_bar/custom_app_bar.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_bottom_bar.dart';
import 'package:sri_krishna_chaitanya_s_application16/widgets/custom_icon_button.dart';

class MessagesTabContainerScreen extends StatefulWidget {
  const MessagesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MessagesTabContainerScreenState createState() =>
      MessagesTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesTabContainerBloc>(
      create: (context) => MessagesTabContainerBloc(MessagesTabContainerState(
        messagesTabContainerModelObj: MessagesTabContainerModel(),
      ))
        ..add(MessagesTabContainerInitialEvent()),
      child: MessagesTabContainerScreen(),
    );
  }
}

class MessagesTabContainerScreenState extends State<MessagesTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessagesTabContainerBloc, MessagesTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildNavigationHeader01(context),
                  Column(
                    children: [
                      SizedBox(height: 37.v),
                      _buildTabview(context),
                      SizedBox(
                        height: 514.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            MessagesPage(),
                            MessagesPage(),
                            MessagesPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNavigationHeader01(BuildContext context) {
    return Container(
      height: 68.v,
      width: double.maxFinite,
      decoration: AppDecoration.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 28.h,
                vertical: 15.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRewindPrimarycontainer38x38,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "lbl_message".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  CustomIconButton(
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconNotification,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 38.v,
            leadingWidth: 66.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgRewind38x38,
              margin: EdgeInsets.only(left: 28.h),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_messages".tr,
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgComputerWhiteA700,
                margin: EdgeInsets.symmetric(horizontal: 28.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 25.v,
      width: 308.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: theme.colorScheme.onPrimary,
        tabs: [
          Tab(
            child: Text(
              "lbl_direct_messages".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_group_chat".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_archived".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
