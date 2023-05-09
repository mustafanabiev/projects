import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flash_chat_controller.dart';

class FlashChatView extends GetView<FlashChatController> {
  const FlashChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AnimationIcon(),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [WavyAnimatedText('Flash Chat')],
                    isRepeatingAnimation: true,
                  ),
                ),
              ],
            ),
            CustomButton(
              onPressed: () async => Get.toNamed(
                Routes.LOGIN,
                arguments: true,
              ),
              backgroundColor: Colors.red,
              text: 'Login',
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () async => Get.toNamed(
                Routes.LOGIN,
                arguments: false,
              ),
              backgroundColor: Colors.green,
              text: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
  });
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width - 30, 50),
        backgroundColor: backgroundColor,
      ),
      child: Text(text),
    );
  }
}

class AnimationIcon extends StatefulWidget {
  const AnimationIcon({super.key, this.size = 63});
  final double size;

  @override
  State<AnimationIcon> createState() => _AnimationIconState();
}

class _AnimationIconState extends State<AnimationIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();

    animation.addStatusListener((status) {
      print(status);
    });

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: SizedBox(
        height: controller.value * widget.size,
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
