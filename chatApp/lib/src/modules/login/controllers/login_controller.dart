import 'dart:developer';

import 'package:chat_app/src/modules/login/service/login_service.dart';
import 'package:chat_app/src/routes/app_pages.dart';
import 'package:chat_app/src/service/user_manage.dart';
import 'package:chat_app/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailCtl = TextEditingController();
  final passwordCtl = TextEditingController();

  final count = 0.obs;

  Future<void> loginRegister(bool isLogin) async {
    if (formKey.currentState!.validate() &&
        GetUtils.isEmail(emailCtl.text) &&
        GetUtils.isPassport(passwordCtl.text)) {
      AppDialog.showLoading();
      final user = isLogin
          ? await LoginService.login(emailCtl.text, passwordCtl.text)
          : await LoginService.register(emailCtl.text, passwordCtl.text);
      Get.back();
      if (user != null) {
        await userManage.setUid(user.user!.uid);
        await Get.offAllNamed(Routes.HOME);
      } else {
        await AppDialog.showAlert(
          isLogin
              ? 'Login je Password do kata bar'
              : 'Kata boldu kairadan registrasia jasaniz',
          'Error',
        );
      }
    } else {
      log('Error');
    }
  }
}
