import 'package:app/src/modules/flashChat/views/flash_chat_view.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView(this.isLogin, {Key? key}) : super(key: key);
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const AnimationIcon(size: 170),
                Column(
                  children: [
                    TextFormField(
                      controller: controller.email,
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20),
                    TextFormField(
                      controller: controller.password,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          CustomButton(
            onPressed: () => Get.toNamed(Routes.HOME),
            backgroundColor: Colors.green,
            text: isLogin ? 'Login:' : 'Register',
          ),
        ],
      ),
    );
  }
}
