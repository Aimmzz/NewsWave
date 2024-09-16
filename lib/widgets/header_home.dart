import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/constants/sizes.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo_news_wave_crop.png',
                  width: 80,
                  height: 40,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: ColorsValues.mainBlack,
                      size: 28.0,
                    ))
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'For You',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: TextSize.header,
                      color: ColorsValues.mainBlack,
                      fontWeight: FontWeight.bold
                    ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: ColorsValues.mainBlack,
                      size: 30.0,
                    )),
                gapW12
              ],
            ),
          ),
        ),
      ],
    );
  }
}
