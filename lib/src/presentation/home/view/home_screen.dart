import 'package:flutter/material.dart';
import 'package:flutter_social_app/router/route_names.dart';
import 'package:flutter_social_app/src/presentation/home/controller/home_controller.dart';
import 'package:flutter_social_app/src/presentation/home/view/widget/custom_list_tile.dart';
import 'package:flutter_social_app/util/const_strings.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.loading.value
          ? Skeleton(
              themeMode: ThemeMode.light,
              isLoading: controller.loading.value,
              skeleton: SkeletonListView(),
              child: Container(child: Center(child: Text("Content"))),
            )
          : Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: true,
                leadingWidth: Get.width * 0.15,
                centerTitle: false,
                backgroundColor: Colors.green,
                leading: InkWell(
                  onTap: () {
                    Get.toNamed(RouteNames.profileScreen, arguments: controller.owner);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        controller.owner.picture ?? '',
                        errorBuilder: (buildContext, object, stackTrace) => Image.asset(ConstStrings.noImagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: Text(controller.owner.name ?? ''),
              ),
              body: ListView.builder(
                  itemCount: controller.userProfile.length,
                  itemBuilder: (context, index) => CustomListTile(
                        name: controller.userProfile[index].name,
                        address: controller.userProfile[index].address,
                        email: controller.userProfile[index].email,
                      )),
            ),
    );
  }
}
