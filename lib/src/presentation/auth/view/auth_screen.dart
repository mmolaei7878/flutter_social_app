import 'package:flutter/material.dart';
import 'package:flutter_social_app/src/presentation/auth/controller/auth_controller.dart';
import 'package:flutter_social_app/util/form_validator.dart';
import 'package:flutter_social_app/util/my_style.dart';
import 'package:get/get.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xff034640),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Container(
                width: Get.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextFormField(
                  // controller: controller.fullnameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => FormValidator.validateEmail(value),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Container(
                width: Get.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextFormField(
                  // controller: controller.fullnameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  validator: (value) => FormValidator.validatePassword(value),

                  keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: Get.width * 0.9,
                height: 50,
                child: MaterialButton(
                  color: const Color(0xff03D17C),
                  onPressed: () async {
                    await controller.login();
                  },
                  child: Obx(() {
                    if (controller.authloading.value) {
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2.0,
                          color: Colors.white,
                        ),
                      );
                    } else {
                      return Text(
                        'LOG IN',
                        style: MyStyle.myStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      );
                    }
                  }),
                ),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
