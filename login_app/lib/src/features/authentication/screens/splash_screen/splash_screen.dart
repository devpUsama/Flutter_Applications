import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          GhostFadeInAnimation(
              durationInMs: 1600,
              animate: GhostAnimatePosition(
                topAfter: 0,
                topBefore: -30,
                leftBefore: -30,
                leftAfter: 0,
              ),
              child: const Image(image: AssetImage(ghostSplashTopIcon),height: 60.0,)),
          GhostFadeInAnimation(
            durationInMs: 2000,
            animate: GhostAnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftBefore: -80,
              leftAfter: ghostDefaultSize,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ghostAppName,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  ghostAppTagLine,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
          GhostFadeInAnimation(
            durationInMs: 2000,
            animate: GhostAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 100,
              rightAfter: ghostDefaultSize,
              rightBefore: ghostDefaultSize,
            ),
            child: const Image(
              image: AssetImage(ghostSplashImage),
              height: 250,
              alignment: Alignment.center,
            ),
          ),
          GhostFadeInAnimation(
            durationInMs: 2000,
            animate: GhostAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 60,
              rightAfter: ghostDefaultSize,
              rightBefore: ghostDefaultSize,
            ),
            child: Container(
              width: ghostSplashContainerSize,
              height: ghostSplashContainerSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ghostPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
