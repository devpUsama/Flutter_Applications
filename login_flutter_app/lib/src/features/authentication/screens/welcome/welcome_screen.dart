import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    var isDarkMode = brightness == Brightness.dark;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: isDarkMode ? ghostSecondaryColor : ghostPrimaryColor,
        body: Stack(
          children: [
            GhostFadeInAnimation(
              durationInMs: 1200,
              animate: GhostAnimatePosition(
                  bottomAfter: 0,
                  bottomBefore: -100,
                  topAfter: 0,
                  topBefore: 0,
                  leftAfter: 0,
                  leftBefore: 0,
                  rightBefore: 0,
                  rightAfter: 0),
              child: Container(
                padding: const EdgeInsets.all(ghostDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(ghostWelcomeScreenImage),
                      height: height * 0.6,
                    ),
                    Column(
                      children: [
                        Text(ghostWelcomeTitle,
                            style: Theme.of(context).textTheme.titleLarge),
                        Text(
                          ghostWelcomeSubTitle,
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Get.to(()=> const LoginScreen()) ,
                            style: Theme.of(context).outlinedButtonTheme.style,
                            child: Text(
                              ghostLoginText.toUpperCase(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Get.to(()=> const SignUpScreen()),
                            style: Theme.of(context).elevatedButtonTheme.style,
                            child: Text(
                              ghostSignUpText.toUpperCase(),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
