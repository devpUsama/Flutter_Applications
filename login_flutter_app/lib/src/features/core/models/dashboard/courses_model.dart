import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';

class TopCoursesModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;
  final String image;

  TopCoursesModel(this.title, this.heading, this.subHeading, this.onPress , this.image);

  static List<TopCoursesModel> list = [
    TopCoursesModel("Flutter Crash Course", "3 Sections", "Programming Languages", null , ghostTopCourseImage1),
    TopCoursesModel("HTML/CSS Course", "2 Sections", "10 Lessons", null , ghostTopCourseImage2),
    TopCoursesModel("Kotlin Course", "4 Sections", "20 Lessons", null , ghostTopCourseImage1),
  ];
}