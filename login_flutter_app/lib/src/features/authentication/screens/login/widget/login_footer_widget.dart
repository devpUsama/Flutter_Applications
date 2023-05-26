import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'package:get/get.dart';


class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(ghostGoogleLogoImage),
              width: 20.0,
            ),
            onPressed: () {},
            label: const Text(ghostSignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: ghostFormHeight - 20.0,
        ),
        TextButton(
          onPressed: () => Get.to(() => const SignUpScreen()),
          child: Text.rich(
            TextSpan(
              style: Theme.of(context).textTheme.bodyLarge,
              text: ghostNotHaveAnAccount,
              children: const [
                TextSpan(
                  text: ghostSignup,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}