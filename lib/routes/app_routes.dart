import 'package:flutter/material.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/login_screen/login_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/signup_screen/signup_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/home_container_screen/home_container_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/search_tab_container_screen/search_tab_container_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/search_results_screen/search_results_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/single_story_screen/single_story_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/comments_screen/comments_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/events_tab_container_screen/events_tab_container_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/notifications_screen/notifications_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/video_chat_screen/video_chat_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/messages_tab_container_screen/messages_tab_container_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/archived_message_tab_container_screen/archived_message_tab_container_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/settings_screen/settings_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/user_profile_tab_container_screen/user_profile_tab_container_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/my_friends_screen/my_friends_screen.dart';
import 'package:sri_krishna_chaitanya_s_application16/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String searchResultsScreen = '/search_results_screen';

  static const String singleStoryScreen = '/single_story_screen';

  static const String commentsScreen = '/comments_screen';

  static const String eventsPage = '/events_page';

  static const String eventsTabContainerScreen = '/events_tab_container_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String videoChatScreen = '/video_chat_screen';

  static const String messagesPage = '/messages_page';

  static const String messagesTabContainerScreen =
      '/messages_tab_container_screen';

  static const String archivedMessagePage = '/archived_message_page';

  static const String archivedMessageTabContainerScreen =
      '/archived_message_tab_container_screen';

  static const String settingsScreen = '/settings_screen';

  static const String userProfilePage = '/user_profile_page';

  static const String userProfileTabContainerScreen =
      '/user_profile_tab_container_screen';

  static const String galleryPage = '/gallery_page';

  static const String myFriendsScreen = '/my_friends_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        signupScreen: SignupScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        searchTabContainerScreen: SearchTabContainerScreen.builder,
        searchResultsScreen: SearchResultsScreen.builder,
        singleStoryScreen: SingleStoryScreen.builder,
        commentsScreen: CommentsScreen.builder,
        eventsTabContainerScreen: EventsTabContainerScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        videoChatScreen: VideoChatScreen.builder,
        messagesTabContainerScreen: MessagesTabContainerScreen.builder,
        archivedMessageTabContainerScreen:
            ArchivedMessageTabContainerScreen.builder,
        settingsScreen: SettingsScreen.builder,
        userProfileTabContainerScreen: UserProfileTabContainerScreen.builder,
        myFriendsScreen: MyFriendsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
