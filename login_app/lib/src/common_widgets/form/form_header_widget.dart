import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {Key? key,
      this.imageColor,
      this.heightBetween,
      this.imageHeight = 0.2,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.textAlign,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);

  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * imageHeight,
          color: imageColor,
        ),
        SizedBox(height: heightBetween),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: textAlign,
        ),
      ],
    );
  }
}
