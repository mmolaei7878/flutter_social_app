import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    this.address,
    this.email,
    this.name,
  }) : super(key: key);

  final String? name;
  final String? email;
  final String? address;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        width: Get.width * 0.9,
        height: Get.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1.0, color: Colors.black),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(flex: 8, child: Text('$name\n$email')),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Text(
                '$address',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ));
  }
}
