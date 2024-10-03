import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/constants/sizes.dart';
import 'package:news_wave/widgets/card_news.dart';
import 'package:news_wave/widgets/header_home.dart';
import 'package:news_wave/widgets/tab_bar_category.dart';
import 'package:news_wave/widgets/text_title.dart';

class HomeNewsPage extends StatefulWidget {
  const HomeNewsPage({super.key});

  @override
  State<HomeNewsPage> createState() => _HomeNewsPageState();
}

class _HomeNewsPageState extends State<HomeNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: const SafeArea(
            top: true,
            bottom: false,
            child: HeaderHome(),
          ),
        ),
        const TabBarCategory(),
        gapH8,
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitle(title: 'Following'),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: ColorsValues.mainBlack,
                  size: 30.0,
                )
              ),
            ],
          ),
        ),
        CardNews()
      ],
    );
  }
}
