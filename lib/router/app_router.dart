import 'package:flutter_social_app/router/route_names.dart';
import 'package:flutter_social_app/src/presentation/auth/controller/auth_binding.dart';
import 'package:flutter_social_app/src/presentation/auth/view/auth_screen.dart';
import 'package:flutter_social_app/src/presentation/home/controller/home_binding.dart';
import 'package:flutter_social_app/src/presentation/home/view/home_screen.dart';
import 'package:flutter_social_app/src/presentation/profile/controller/profile_binding.dart';
import 'package:flutter_social_app/src/presentation/profile/view/profile_screen.dart';
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
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteNames.profileScreen,
      page: () => ProfileScreen(),
      binding: ProfileBinding(),
    ),
  ];
}
