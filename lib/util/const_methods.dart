import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackBarType { error, success }

class ConstMethods {
  static showSnackBar({
    required final SnackBarType snackBarType,
    required final String title,
    final String? message,
    final int? duration,
  }) {
    Get.snackbar(
      title,
      message ?? '',
      backgroundColor: snackBarType == SnackBarType.success ? Colors.green : Colors.red,
      colorText: Colors.white,
      duration: Duration(seconds: duration ?? 2),
    );
  }
}
