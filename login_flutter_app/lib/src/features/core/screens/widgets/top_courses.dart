import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/features/core/models/dashboard/courses_model.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';

class TopCourses extends StatelessWidget {
  const TopCourses({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = TopCoursesModel.list;

    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ghostCardBgColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          list[index].title,
                          style: txtTheme.titleLarge,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                          child: Image(
                        image: AssetImage(list[index].image),
                        height: 110,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                        onPressed: () {},
                        child: const Icon(Icons.play_arrow),
                      ),
                      const SizedBox(width: ghostDashboardCardPadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].heading,
                              style: txtTheme.titleLarge,
                              overflow: TextOverflow.ellipsis),
                          Text(list[index].subHeading,
                              style: txtTheme.bodyLarge,
                              overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
