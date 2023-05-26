import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/core/screens/widgets/appbar.dart';
import 'package:login_flutter_app/src/features/core/screens/widgets/banners.dart';
import 'package:login_flutter_app/src/features/core/screens/widgets/categories.dart';
import 'package:login_flutter_app/src/features/core/screens/widgets/search.dart';
import 'package:login_flutter_app/src/features/core/screens/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Variable
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(ghostDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ghostDashboardTitle,
                style: txtTheme.bodyMedium,
              ),
              Text(
                ghostDashboardHeading,
                style: txtTheme.displaySmall,
              ),
              const SizedBox(height: ghostDashboardPadding),

              //Search Bar
              SearchBox(txtTheme: txtTheme),
              const SizedBox(height: ghostDashboardPadding),

              //Categories
              CategoriesWidget(txtTheme: txtTheme),
              const SizedBox(height: ghostDashboardPadding),

              //Banners
              BannersWidget(txtTheme: txtTheme),
              const SizedBox(height: ghostDashboardPadding),

              //Top Courses
              Text(ghostDashboardTopCourses,
                  style: txtTheme.titleLarge?.apply(fontSizeFactor: 1.2)),
              TopCourses(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}
