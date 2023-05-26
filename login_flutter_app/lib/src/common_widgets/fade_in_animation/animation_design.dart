import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';


class GhostFadeInAnimation extends StatelessWidget {
  GhostFadeInAnimation({
    super.key,
    required this.durationInMs,
    this.animate,
    required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final GhostAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value
            ? animate!.topAfter
            : animate!.topBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        left: controller.animate.value
            ? animate!.leftAfter
            : animate!.leftBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
          // child: const Image(
          //   image: AssetImage(ghostSplashTopIcon),
          //   width: 120,
          // ),
        ),
      ),
    );
  }
}
