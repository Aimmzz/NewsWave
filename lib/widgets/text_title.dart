import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/constants/sizes.dart';

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: TextSize.header,
        color: ColorsValues.mainBlack,
        fontWeight: FontWeight.bold),
    );
  }
}
