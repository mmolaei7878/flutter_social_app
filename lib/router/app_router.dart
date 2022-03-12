import 'package:flutter_social_app/router/route_names.dart';
import 'package:flutter_social_app/src/auth/controller/auth_binding.dart';
import 'package:flutter_social_app/src/auth/view/auth_screen.dart';
import 'package:flutter_social_app/src/home/view/home_screen.dart';
import 'package:flutter_social_app/src/profile/profile_screen.dart';
import 'package:get/get.dart';

class AppRouter {
  static final pageList = [
    GetPage(
      name: RouteNames.authScreen,
      page: () => const AuthScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RouteNames.profileScreen,
      page: () => const ProfileScreen(),
    ),
  ];
}
