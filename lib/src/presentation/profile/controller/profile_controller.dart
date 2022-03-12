import 'package:flutter_social_app/src/models/user_profile_model.dart';
import 'package:flutter_social_app/src/presentation/home/controller/home_controller.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final HomeController homeController = Get.find();

  UserProfile? findFriend(String uuidFriend) => homeController.userProfile.firstWhere(
        (element) => element.guid == uuidFriend,
        orElse: () => UserProfile(),
      );
}
