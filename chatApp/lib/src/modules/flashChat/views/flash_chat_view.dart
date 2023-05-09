import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/src/components/buttons/custom_button.dart';
import 'package:chat_app/src/components/logo/animation_logo.dart';
import 'package:chat_app/src/constants/app_colors.dart';
import 'package:chat_app/src/constants/app_text_styles.dart';
import 'package:chat_app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flash_chat_controller.dart';

class FlashChatView extends GetView<FlashChatController> {
  const FlashChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AnimationLogo(),
              DefaultTextStyle(
                style: AppTextStyles.flashChatStyle,
                child: AnimatedTextKit(
                  animatedTexts: [WavyAnimatedText('Flash Chat')],
                  isRepeatingAnimation: true,
                  onTap: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          CustomButton(
            onPressed: () async => Get.toNamed(Routes.LOGIN, arguments: true),
            backgroundColor: AppColors.loginBtn,
            text: 'Login',
          ),
          const SizedBox(height: 12),
          CustomButton(
            onPressed: () async => Get.toNamed(Routes.LOGIN, arguments: false),
            backgroundColor: AppColors.registerBtn,
            text: 'Register',
          ),
        ],
      ),
    );
  }
}
