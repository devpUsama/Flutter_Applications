import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'widget/login_footer_widget.dart';
import 'widget/login_form_widget.dart';
import 'widget/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(ghostDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                //Section 1
                FormHeaderWidget(
                  image: ghostWelcomeScreenImage,
                  title: ghostLoginTitle,
                  subTitle: ghostLoginSubTitle,
                ),
                //Section 2
                LoginForm(),
                //Section 3
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
