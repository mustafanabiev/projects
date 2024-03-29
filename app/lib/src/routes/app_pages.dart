import 'package:get/get.dart';

import '../modules/flashChat/bindings/flash_chat_binding.dart';
import '../modules/flashChat/views/flash_chat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FLASH_CHAT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FLASH_CHAT,
      page: () => const FlashChatView(),
      binding: FlashChatBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(Get.arguments as bool),
      binding: LoginBinding(),
    ),
  ];
}
