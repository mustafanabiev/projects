import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/message/send_message.dart';
import '../../../components/message/stream_message.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('⚡️Chat'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () async => await controller.logout(),
                child: const Text('Logout Account'),
              ),
              PopupMenuItem(
                onTap: () async => await controller.delete(),
                child: const Text('Delete Account'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          StreamMessage(controller.streamMessage()),
          SendMessage(
            controller.textController,
            onPressed: () async => controller.sendMessage(),
          ),
        ],
      ),
    );
  }
}
