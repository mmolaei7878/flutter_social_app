import 'package:flutter/material.dart';
import 'package:flutter_social_app/router/app_router.dart';
import 'package:flutter_social_app/router/route_names.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRouter.pageList,
      initialRoute: RouteNames.authScreen,
    );
  }
}
