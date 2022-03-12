import 'package:flutter/material.dart';
import 'package:flutter_social_app/router/route_names.dart';
import 'package:flutter_social_app/src/home/view/widget/custom_list_tile.dart';
import 'package:flutter_social_app/util/const_strings.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: Get.width * 0.15,
        actions: [],
        leading: InkWell(
          onTap: () {
            Get.toNamed(RouteNames.profileScreen);
          },
          child: Padding(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "https://i.pinimg.com/474x/0c/eb/c3/0cebc3e2a01fe5abcff9f68e9d2a06e4.jpg",
                errorBuilder: (buildContext, object, stackTrace) => Image.asset(ConstStrings.noImagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        centerTitle: false,
        title: Text("User Name"),
      ),
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) => snapshot.connectionState == ConnectionState.waiting
            ? Skeleton(
                isLoading: true,
                skeleton: SkeletonListView(),
                child: Container(child: Center(child: Text("Content"))),
              )
            : ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CustomListTile();
                }),
      ),
    );
  }
}
