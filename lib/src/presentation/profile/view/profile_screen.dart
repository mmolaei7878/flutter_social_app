import 'package:flutter/material.dart';
import 'package:flutter_social_app/router/route_names.dart';
import 'package:flutter_social_app/src/models/user_profile_model.dart';
import 'package:flutter_social_app/src/presentation/profile/controller/profile_controller.dart';
import 'package:flutter_social_app/util/const_methods.dart';
import 'package:flutter_social_app/util/const_strings.dart';
import 'package:flutter_social_app/util/my_style.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileController> {
  ProfileScreen({
    Key? key,
  }) : super(key: key);
  UserProfile? userProfile = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: true,
        leadingWidth: Get.width * 0.15,
        leading: Padding(
          padding: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              userProfile?.picture ?? '',
              errorBuilder: (buildContext, object, stackTrace) => Image.asset(ConstStrings.noImagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        centerTitle: false,
        title: Text(userProfile?.name ?? ''),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              width: Get.width * 0.9,
              height: Get.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1.0, color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Balance: ${userProfile?.balance}"),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "age  ", style: MyStyle.myStyle(color: Colors.black)),
                        TextSpan(text: "${userProfile?.age}  ", style: MyStyle.myStyle(color: Colors.black)),
                        TextSpan(text: "registered  ", style: MyStyle.myStyle(color: Colors.black)),
                        TextSpan(text: "${userProfile?.registered} ", style: MyStyle.myStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  Text("About: "),
                  Text(
                    "${userProfile?.about}",
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 3,
                  ),
                  if (userProfile?.isOwner ?? false)
                    Align(
                      alignment: Alignment.centerRight,
                      child: ClipOval(
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: Get.width * 0.2,
                            height: Get.height * 0.05,
                            child: Text('Edit'),
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.08,
            ),
            Text("Friends"),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Wrap(children: [
              ...?userProfile?.friends
                  ?.map(
                    (e) => ClipOval(
                      child: InkWell(
                        onTap: () {
                          final UserProfile? friend = controller.findFriend(e.guid ?? '');
                          if (friend?.guid != null) {
                            Get.to(() => ProfileScreen(), arguments: friend);
                          } else {
                            ConstMethods.showSnackBar(snackBarType: SnackBarType.error, title: "Couldn`t find friend");
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          width: Get.width * 0.2,
                          height: Get.height * 0.05,
                          child: FittedBox(child: Text(e.name ?? '')),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ]),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const Text("greeting"),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              width: Get.width * 0.9,
              height: Get.height * 0.15,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Text(userProfile?.greeting ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}
