import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../../controllers/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: ghostFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  label: Text(ghostFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: ghostFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text(ghostEmail),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(height: ghostFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  label: Text(ghostPhoneNo),
                  prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(height: ghostFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text(ghostPassword),
                  prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(height: ghostFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()){
                      SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    }
                  }, child: Text(ghostSignup.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}