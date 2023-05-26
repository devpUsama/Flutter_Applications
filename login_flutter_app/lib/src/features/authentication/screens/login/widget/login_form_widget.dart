import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard.dart';
import '../../../../../constants/sizes.dart';
import 'package:get/get.dart';
import '../../../../../constants/text_strings.dart';
import '../../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: ghostFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: ghostEmail,
                hintText: ghostEmail,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: ghostFormHeight),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: ghostPassword,
                  hintText: ghostPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )),
            ),
            const SizedBox(
              height: ghostFormHeight - 20,
            ),

            //Forget password button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(ghostForgetPassword),
              ),
            ),

            //login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(()=> const Dashboard()),
                child: Text(
                  ghostLogin.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}