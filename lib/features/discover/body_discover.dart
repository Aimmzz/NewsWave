import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/constants/sizes.dart';
import 'package:news_wave/widgets/card_dicover.dart';

class BodyDiscover extends StatelessWidget {
  const BodyDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: ColorsValues.mainBlack,
                fontWeight: FontWeight.bold),
          ),
          gapH8,
          CardDiscover()
        ],
      ),
    );
  }
}
