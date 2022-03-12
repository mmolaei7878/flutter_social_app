import 'package:flutter_social_app/src/models/user_profile_model.dart';
import 'package:flutter_social_app/src/service/app_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  UserProfile owner = UserProfile();

  @override
  void onInit() {
    super.onInit();
    getUserProfiles();
  }

  final RxBool loading = false.obs;

  List<UserProfile> userProfile = <UserProfile>[];
  Future<void> getUserProfiles() async {
    loading(true);
    Future.delayed(const Duration(seconds: 3), () async {
      final List<UserProfile> data = await AppService.getUserProfiles();
      userProfile = data;
      owner = findOwner();
      loading(false);
    });
  }

  UserProfile findOwner() => userProfile.firstWhere((element) => element.isOwner ?? false);
}
