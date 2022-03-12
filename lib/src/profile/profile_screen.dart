import 'package:flutter/material.dart';
import 'package:flutter_social_app/util/const_strings.dart';
import 'package:flutter_social_app/util/my_style.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: Get.width * 0.15,
        leading: Padding(
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
        centerTitle: false,
        title: const Text("profile"),
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
                  Text("Balance: ${12133}"),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "age  ", style: MyStyle.myStyle(color: Colors.black)),
                        TextSpan(text: "23  ", style: MyStyle.myStyle(color: Colors.black)),
                        TextSpan(text: "registered  ", style: MyStyle.myStyle(color: Colors.black)),
                        TextSpan(text: "9:12 AM", style: MyStyle.myStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  Text("About: "),
                  Text("askldn kasdkl;ansdas;ldmas;ld\na;slmda;slmd;ls"),
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
            Wrap(
              children: [
                ClipOval(
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.2,
                    height: Get.height * 0.05,
                    child: Text('user 1'),
                    color: Colors.blue,
                  ),
                ),
                ClipOval(
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.2,
                    height: Get.height * 0.05,
                    child: Text('user 2'),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text("greeting"),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              width: Get.width * 0.9,
              height: Get.height * 0.15,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Text("m klasnflksan faslk fklasmf ;lmd \n aldkmasl;dma;sldm"),
            ),
          ],
        ),
      ),
    );
  }
}
