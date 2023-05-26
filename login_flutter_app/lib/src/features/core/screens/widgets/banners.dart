import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ghostCardBgColor),
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                        child: Image(
                          image: AssetImage(ghostBookmarkIcon),
                          width: 30,
                        )),
                    Flexible(
                        child: Image(
                          image: AssetImage(ghostBannerImage1),
                          width: 105,
                        )),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  ghostDashboardBannerTitle1,
                  style: txtTheme.titleLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  ghostDashboardBannerSubTitle,
                  style: txtTheme.bodyLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: ghostDashboardCardPadding),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ghostCardBgColor),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(
                            child: Image(
                              image: AssetImage(ghostBookmarkIcon),
                              width: 30,
                            )),
                        Flexible(
                            child: Image(
                              image: AssetImage(ghostBannerImage2),
                              width: 105,
                            )),
                      ],
                    ),
                    Text(
                      ghostDashboardBannerTitle2,
                      style: txtTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      ghostDashboardBannerSubTitle,
                      style: txtTheme.bodyLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(ghostDashboardButton)),
              ),
            ],
          ),
        )
      ],
    );
  }
}