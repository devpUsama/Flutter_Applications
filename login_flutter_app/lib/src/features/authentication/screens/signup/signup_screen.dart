import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signup/widget/signup_form_widget.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(ghostDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                    image: ghostWelcomeScreenImage,
                    title: ghostSignupTitle,
                    subTitle: ghostSignupSubTitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(ghostGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: Text(ghostSignInWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(()=> const LoginScreen()),
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: ghostAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyLarge),
                          TextSpan(text: ghostLogin.toUpperCase()),
                        ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
