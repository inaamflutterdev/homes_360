import 'package:flutter/material.dart';
import 'package:homes360/presentation/splash_screen/splash_screen.dart';
import 'package:homes360/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:homes360/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:homes360/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:homes360/presentation/home_container_screen/home_container_screen.dart';
import 'package:homes360/presentation/home_alarm_screen/home_alarm_screen.dart';
import 'package:homes360/presentation/notification_screen/notification_screen.dart';
import 'package:homes360/presentation/notification_empty_states_screen/notification_empty_states_screen.dart';
import 'package:homes360/presentation/message_chat_screen/message_chat_screen.dart';
import 'package:homes360/presentation/my_home_empty_screen/my_home_empty_screen.dart';
import 'package:homes360/presentation/add_new_property_address_screen/add_new_property_address_screen.dart';
import 'package:homes360/presentation/add_new_property_meet_with_a_agent_screen/add_new_property_meet_with_a_agent_screen.dart';
import 'package:homes360/presentation/add_new_property_time_to_sell_screen/add_new_property_time_to_sell_screen.dart';
import 'package:homes360/presentation/add_new_property_reason_selling_home_screen/add_new_property_reason_selling_home_screen.dart';
import 'package:homes360/presentation/add_new_property_decsription_screen/add_new_property_decsription_screen.dart';
import 'package:homes360/presentation/add_new_property_home_facts_screen/add_new_property_home_facts_screen.dart';
import 'package:homes360/presentation/add_new_property_contact_screen/add_new_property_contact_screen.dart';
import 'package:homes360/presentation/add_new_property_select_amenities_screen/add_new_property_select_amenities_screen.dart';
import 'package:homes360/presentation/add_new_property_details_screen/add_new_property_details_screen.dart';
import 'package:homes360/presentation/home_listing_screen/home_listing_screen.dart';
import 'package:homes360/presentation/home_listing_satelite_screen/home_listing_satelite_screen.dart';
import 'package:homes360/presentation/home_listing_draw_screen/home_listing_draw_screen.dart';
import 'package:homes360/presentation/filter_tab_container_screen/filter_tab_container_screen.dart';
import 'package:homes360/presentation/product_details_screen/product_details_screen.dart';
import 'package:homes360/presentation/pick_date_screen/pick_date_screen.dart';
import 'package:homes360/presentation/verify_phone_number_screen/verify_phone_number_screen.dart';
import 'package:homes360/presentation/select_virtual_app_screen/select_virtual_app_screen.dart';
import 'package:homes360/presentation/select_app_alarm_screen/select_app_alarm_screen.dart';
import 'package:homes360/presentation/confirm_request_screen/confirm_request_screen.dart';
import 'package:homes360/presentation/settings_screen/settings_screen.dart';
import 'package:homes360/presentation/faqs_get_help_screen/faqs_get_help_screen.dart';
import 'package:homes360/presentation/past_tours_screen/past_tours_screen.dart';
import 'package:homes360/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:homes360/presentation/recently_views_screen/recently_views_screen.dart';
import 'package:homes360/presentation/favorite_screen/favorite_screen.dart';
import 'package:homes360/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeAlarmScreen = '/home_alarm_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationEmptyStatesScreen =
      '/notification_empty_states_screen';

  static const String messagePage = '/message_page';

  static const String messageChatScreen = '/message_chat_screen';

  static const String myHomeEmptyScreen = '/my_home_empty_screen';

  static const String myHomePage = '/my_home_page';

  static const String addNewPropertyAddressScreen =
      '/add_new_property_address_screen';

  static const String addNewPropertyMeetWithAAgentScreen =
      '/add_new_property_meet_with_a_agent_screen';

  static const String addNewPropertyTimeToSellScreen =
      '/add_new_property_time_to_sell_screen';

  static const String addNewPropertyReasonSellingHomeScreen =
      '/add_new_property_reason_selling_home_screen';

  static const String addNewPropertyDecsriptionScreen =
      '/add_new_property_decsription_screen';

  static const String addNewPropertyHomeFactsScreen =
      '/add_new_property_home_facts_screen';

  static const String addNewPropertyContactScreen =
      '/add_new_property_contact_screen';

  static const String addNewPropertySelectAmenitiesScreen =
      '/add_new_property_select_amenities_screen';

  static const String addNewPropertyDetailsScreen =
      '/add_new_property_details_screen';

  static const String homeListingScreen = '/home_listing_screen';

  static const String homeListingSateliteScreen =
      '/home_listing_satelite_screen';

  static const String homeListingDrawScreen = '/home_listing_draw_screen';

  static const String filterPage = '/filter_page';

  static const String filterTabContainerScreen = '/filter_tab_container_screen';

  static const String homeSearchPage = '/home_search_page';

  static const String productDetailsScreen = '/product_details_screen';

  static const String pickDateScreen = '/pick_date_screen';

  static const String verifyPhoneNumberScreen = '/verify_phone_number_screen';

  static const String selectVirtualAppScreen = '/select_virtual_app_screen';

  static const String selectAppAlarmScreen = '/select_app_alarm_screen';

  static const String confirmRequestScreen = '/confirm_request_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String faqsGetHelpScreen = '/faqs_get_help_screen';

  static const String pastToursScreen = '/past_tours_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String recentlyViewsScreen = '/recently_views_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        signInScreen: SignInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        homeAlarmScreen: HomeAlarmScreen.builder,
        notificationScreen: NotificationScreen.builder,
        notificationEmptyStatesScreen: NotificationEmptyStatesScreen.builder,
        messageChatScreen: MessageChatScreen.builder,
        myHomeEmptyScreen: MyHomeEmptyScreen.builder,
        addNewPropertyAddressScreen: AddNewPropertyAddressScreen.builder,
        addNewPropertyMeetWithAAgentScreen:
            AddNewPropertyMeetWithAAgentScreen.builder,
        addNewPropertyTimeToSellScreen: AddNewPropertyTimeToSellScreen.builder,
        addNewPropertyReasonSellingHomeScreen:
            AddNewPropertyReasonSellingHomeScreen.builder,
        addNewPropertyDecsriptionScreen:
            AddNewPropertyDecsriptionScreen.builder,
        addNewPropertyHomeFactsScreen: AddNewPropertyHomeFactsScreen.builder,
        addNewPropertyContactScreen: AddNewPropertyContactScreen.builder,
        addNewPropertySelectAmenitiesScreen:
            AddNewPropertySelectAmenitiesScreen.builder,
        addNewPropertyDetailsScreen: AddNewPropertyDetailsScreen.builder,
        homeListingScreen: HomeListingScreen.builder,
        homeListingSateliteScreen: HomeListingSateliteScreen.builder,
        homeListingDrawScreen: HomeListingDrawScreen.builder,
        filterTabContainerScreen: FilterTabContainerScreen.builder,
        productDetailsScreen: ProductDetailsScreen.builder,
        pickDateScreen: PickDateScreen.builder,
        verifyPhoneNumberScreen: VerifyPhoneNumberScreen.builder,
        selectVirtualAppScreen: SelectVirtualAppScreen.builder,
        selectAppAlarmScreen: SelectAppAlarmScreen.builder,
        confirmRequestScreen: ConfirmRequestScreen.builder,
        settingsScreen: SettingsScreen.builder,
        faqsGetHelpScreen: FaqsGetHelpScreen.builder,
        pastToursScreen: PastToursScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        recentlyViewsScreen: RecentlyViewsScreen.builder,
        favoriteScreen: FavoriteScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
