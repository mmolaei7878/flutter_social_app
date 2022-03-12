import 'package:flutter/material.dart';
import 'package:flutter_social_app/router/route_names.dart';
import 'package:flutter_social_app/util/const_methods.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final RxBool authloading = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey();

  Future<void> login() async {
    authloading(true);
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        final res = formKey.currentState?.validate();
        if (res == null) {
          return;
        }
        if (res) {
          Get.offAndToNamed(RouteNames.homeScreen);
        } else {
          ConstMethods.showSnackBar(snackBarType: SnackBarType.error, title: "Please check the fields and try again");
        }
        authloading(false);
      },
    );
  }
}
