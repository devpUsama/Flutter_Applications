import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/features/core/models/dashboard/categories_model.dart';
import '../../../../constants/colors.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.txtTheme,
  });
  final TextTheme txtTheme;



  @override
  Widget build(BuildContext context) {

    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 45,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ghostDarkColor,
                  ),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: txtTheme.titleMedium?.apply(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading,
                          style: txtTheme.titleMedium,
                          overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading,
                          style: txtTheme.bodyLarge,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
