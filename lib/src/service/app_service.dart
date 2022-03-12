import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:flutter_social_app/src/models/user_profile_model.dart';
import 'package:flutter_social_app/util/const_strings.dart';

class AppService {
  static Future<List<UserProfile>> getUserProfiles() async {
    try {
      final String response = await rootBundle.loadString(ConstStrings.userProfileData);
      final data = await json.decode(response) as List;
      final List<UserProfile> items = data.map((e) => UserProfile.fromJson(e)).toList();
      return items;
    } catch (e) {
      return throw Exception(e);
    }
    // this will return error || decoded data
  }
}
