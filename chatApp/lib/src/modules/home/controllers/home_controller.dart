import 'dart:developer';

import 'package:chat_app/src/modules/home/service/home_service.dart';
import 'package:chat_app/src/routes/app_pages.dart';
import 'package:chat_app/src/utils/alert/alert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  final textController = TextEditingController();

  Future<void> logout() async {
    AppDialog.showLoading();
    await HomeService.logout();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }

  Future<void> delete() async {
    AppDialog.showLoading();
    await HomeService.delete();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }

  Future<void> sendMessage() async {
    final sms = textController.text.trim();
    textController.clear();
    if (sms != '') {
      await HomeService.sendMessage(sms);
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamMessage() {
    return HomeService.streamMessage();
  }
}
