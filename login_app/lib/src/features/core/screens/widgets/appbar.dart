import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';


class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        ghostAppName,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20.0, top: 7.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ghostCardBgColor,
          ),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.instance.logout();
            },
            icon: const Image(
              image: AssetImage(ghostUserProfileImage),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}