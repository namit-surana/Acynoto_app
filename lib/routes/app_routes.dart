import 'package:medi_app/presentation/splash_screen/splash_screen.dart';
import 'package:medi_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:medi_app/presentation/onboarding1_screen/onboarding1_screen.dart';
import 'package:medi_app/presentation/onboarding1_screen/binding/onboarding1_binding.dart';
import 'package:medi_app/presentation/onboarding2_screen/onboarding2_screen.dart';
import 'package:medi_app/presentation/onboarding2_screen/binding/onboarding2_binding.dart';
import 'package:medi_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:medi_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:medi_app/presentation/log_in_with_error_screen/log_in_with_error_screen.dart';
import 'package:medi_app/presentation/log_in_with_error_screen/binding/log_in_with_error_binding.dart';
import 'package:medi_app/presentation/log_in_active_screen/log_in_active_screen.dart';
import 'package:medi_app/presentation/log_in_active_screen/binding/log_in_active_binding.dart';
import 'package:medi_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:medi_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:medi_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:medi_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:medi_app/presentation/verifications_screen/verifications_screen.dart';
import 'package:medi_app/presentation/verifications_screen/binding/verifications_binding.dart';
import 'package:medi_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:medi_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:medi_app/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:medi_app/presentation/reset_password_success_screen/binding/reset_password_success_binding.dart';
import 'package:medi_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:medi_app/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:medi_app/presentation/categorie_screen/categorie_screen.dart';
import 'package:medi_app/presentation/categorie_screen/binding/categorie_binding.dart';
import 'package:medi_app/presentation/nearby_doctor_screen/nearby_doctor_screen.dart';
import 'package:medi_app/presentation/nearby_doctor_screen/binding/nearby_doctor_binding.dart';
import 'package:medi_app/presentation/avaliable_doctors_screen/avaliable_doctors_screen.dart';
import 'package:medi_app/presentation/avaliable_doctors_screen/binding/avaliable_doctors_binding.dart';
import 'package:medi_app/presentation/search_screen/search_screen.dart';
import 'package:medi_app/presentation/search_screen/binding/search_binding.dart';
import 'package:medi_app/presentation/doctor_details_screen/doctor_details_screen.dart';
import 'package:medi_app/presentation/doctor_details_screen/binding/doctor_details_binding.dart';
import 'package:medi_app/presentation/book_appointment_screen/book_appointment_screen.dart';
import 'package:medi_app/presentation/book_appointment_screen/binding/book_appointment_binding.dart';
import 'package:medi_app/presentation/patient_details_screen/patient_details_screen.dart';
import 'package:medi_app/presentation/patient_details_screen/binding/patient_details_binding.dart';
import 'package:medi_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:medi_app/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:medi_app/presentation/opoment_booking_success_screen/opoment_booking_success_screen.dart';
import 'package:medi_app/presentation/opoment_booking_success_screen/binding/opoment_booking_success_binding.dart';
import 'package:medi_app/presentation/appointment_screen/appointment_screen.dart';
import 'package:medi_app/presentation/appointment_screen/binding/appointment_binding.dart';
import 'package:medi_app/presentation/appointment_details_screen/appointment_details_screen.dart';
import 'package:medi_app/presentation/appointment_details_screen/binding/appointment_details_binding.dart';
import 'package:medi_app/presentation/favorite_screen/favorite_screen.dart';
import 'package:medi_app/presentation/favorite_screen/binding/favorite_binding.dart';
import 'package:medi_app/presentation/chat_tab_container_screen/chat_tab_container_screen.dart';
import 'package:medi_app/presentation/chat_tab_container_screen/binding/chat_tab_container_binding.dart';
import 'package:medi_app/presentation/chat_details_screen/chat_details_screen.dart';
import 'package:medi_app/presentation/chat_details_screen/binding/chat_details_binding.dart';
import 'package:medi_app/presentation/call_screen/call_screen.dart';
import 'package:medi_app/presentation/call_screen/binding/call_binding.dart';
import 'package:medi_app/presentation/videocall_screen/videocall_screen.dart';
import 'package:medi_app/presentation/videocall_screen/binding/videocall_binding.dart';
import 'package:medi_app/presentation/add_review_screen/add_review_screen.dart';
import 'package:medi_app/presentation/add_review_screen/binding/add_review_binding.dart';
import 'package:medi_app/presentation/all_reviews_screen/all_reviews_screen.dart';
import 'package:medi_app/presentation/all_reviews_screen/binding/all_reviews_binding.dart';
import 'package:medi_app/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:medi_app/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:medi_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:medi_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:medi_app/presentation/my_cards_screen/my_cards_screen.dart';
import 'package:medi_app/presentation/my_cards_screen/binding/my_cards_binding.dart';
import 'package:medi_app/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:medi_app/presentation/add_new_card_screen/binding/add_new_card_binding.dart';
import 'package:medi_app/presentation/add_new_card_active_screen/add_new_card_active_screen.dart';
import 'package:medi_app/presentation/add_new_card_active_screen/binding/add_new_card_active_binding.dart';
import 'package:medi_app/presentation/settings_screen/settings_screen.dart';
import 'package:medi_app/presentation/settings_screen/binding/settings_binding.dart';
import 'package:medi_app/presentation/notifications_screen/notifications_screen.dart';
import 'package:medi_app/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:medi_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:medi_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:medi_app/presentation/help_center_screen/help_center_screen.dart';
import 'package:medi_app/presentation/help_center_screen/binding/help_center_binding.dart';
import 'package:medi_app/presentation/log_out_screen/log_out_screen.dart';
import 'package:medi_app/presentation/log_out_screen/binding/log_out_binding.dart';
import 'package:medi_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:medi_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboarding1Screen = '/onboarding1_screen';

  static const String onboarding2Screen = '/onboarding2_screen';

  static const String logInScreen = '/log_in_screen';

  static const String logInWithErrorScreen = '/log_in_with_error_screen';

  static const String logInActiveScreen = '/log_in_active_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationsScreen = '/verifications_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String categorieScreen = '/categorie_screen';

  static const String nearbyDoctorScreen = '/nearby_doctor_screen';

  static const String avaliableDoctorsScreen = '/avaliable_doctors_screen';

  static const String searchScreen = '/search_screen';

  static const String doctorDetailsScreen = '/doctor_details_screen';

  static const String bookAppointmentScreen = '/book_appointment_screen';

  static const String patientDetailsScreen = '/patient_details_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String opomentBookingSuccessScreen =
      '/opoment_booking_success_screen';

  static const String appointmentScreen = '/appointment_screen';

  static const String appointment1Page = '/appointment1_page';

  static const String appointmentDetailsScreen = '/appointment_details_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String favorite1Page = '/favorite1_page';

  static const String chatPage = '/chat_page';

  static const String chat1Page = '/chat1_page';

  static const String chatTabContainerScreen = '/chat_tab_container_screen';

  static const String chatOnePage = '/chat_one_page';

  static const String chatDetailsScreen = '/chat_details_screen';

  static const String callScreen = '/call_screen';

  static const String videocallScreen = '/videocall_screen';

  static const String addReviewScreen = '/add_review_screen';

  static const String allReviewsScreen = '/all_reviews_screen';

  static const String profilePage = '/profile_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String myCardsScreen = '/my_cards_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String addNewCardActiveScreen = '/add_new_card_active_screen';

  static const String settingsScreen = '/settings_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String helpCenterScreen = '/help_center_screen';

  static const String logOutScreen = '/log_out_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      transition: Transition.rightToLeft,
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    // GetPage(
    //   transition: Transition.rightToLeft,
    //   name: onboardingScreen,
    //   page: () => OnboardingScreen(),
    //   bindings: [
    //     OnboardingBinding(),
    //   ],
    // ),
    GetPage(
      transition: Transition.rightToLeft,
      name: onboarding1Screen,
      page: () => OnboardingOneScreen(),
      bindings: [
        Onboarding1Binding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: onboarding2Screen,
      page: () => Onboarding2Screen(),
      bindings: [
        Onboarding2Binding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: logInWithErrorScreen,
      page: () => LogInWithErrorScreen(),
      bindings: [
        LogInWithErrorBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: logInActiveScreen,
      page: () => LogInActiveScreen(),
      bindings: [
        LogInActiveBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: verificationsScreen,
      page: () => VerificationsScreen(),
      bindings: [
        VerificationsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: resetPasswordSuccessScreen,
      page: () => ResetPasswordSucessScreen(),
      bindings: [
        ResetPasswordSuccessBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: categorieScreen,
      page: () => CategorieScreen(),
      bindings: [
        CategorieBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: nearbyDoctorScreen,
      page: () => NearbyDoctorScreen(),
      bindings: [
        NearbyDoctorBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: avaliableDoctorsScreen,
      page: () => AvaliableDoctorsScreen(),
      bindings: [
        AvaliableDoctorsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: doctorDetailsScreen,
      page: () => DoctorDetailsScreen(),
      bindings: [
        DoctorDetailsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: bookAppointmentScreen,
      page: () => BookAppointmentScreen(),
      bindings: [
        BookAppointmentBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: patientDetailsScreen,
      page: () => PatientDetailsScreen(),
      bindings: [
        PatientDetailsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: opomentBookingSuccessScreen,
      page: () => OpomentBookingSuccessScreen(),
      bindings: [
        OpomentBookingSuccessBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: appointmentScreen,
      page: () => AppointmentScreen(),
      bindings: [
        AppointmentBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: appointmentDetailsScreen,
      page: () => AppointmentDetailsScreen(),
      bindings: [
        AppointmentDetailsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: favoriteScreen,
      page: () => FavoriteScreen(),
      bindings: [
        FavoriteBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: chatTabContainerScreen,
      page: () => ChatTabContainerScreen(),
      bindings: [
        ChatTabContainerBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: chatDetailsScreen,
      page: () => ChatDetailsScreen(),
      bindings: [
        ChatDetailsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: callScreen,
      page: () => CallScreen(),
      bindings: [
        CallBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: videocallScreen,
      page: () => VideocallScreen(),
      bindings: [
        VideocallBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: addReviewScreen,
      page: () => AddReviewScreen(),
      bindings: [
        AddReviewBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: allReviewsScreen,
      page: () => AllReviewsScreen(),
      bindings: [
        AllReviewsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: myCardsScreen,
      page: () => MyCardsScreen(),
      bindings: [
        MyCardsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: addNewCardScreen,
      page: () => AddNewCardScreen(),
      bindings: [
        AddNewCardBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: addNewCardActiveScreen,
      page: () => AddNewCardActiveScreen(),
      bindings: [
        AddNewCardActiveBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: helpCenterScreen,
      page: () => HelpCenterScreen(),
      bindings: [
        HelpCenterBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: logOutScreen,
      page: () => LogOutScreen(),
      bindings: [
        LogOutBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
