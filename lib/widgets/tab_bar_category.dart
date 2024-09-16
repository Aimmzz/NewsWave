import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/widgets/card_news_big.dart';

class TabBarCategory extends StatefulWidget {
  const TabBarCategory({super.key});

  @override
  State<TabBarCategory> createState() => _TabBarCategoryState();
}

class _TabBarCategoryState extends State<TabBarCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> categories = [
    'Trending',
    'Food',
    'Travel',
    'Fashion',
    'Education',
    'Business',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 68,
                right: 0,
                child: Container(
                  height: 3,
                  color: Colors.grey,
                ),
              ),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: ColorsValues.mainBlack,
                unselectedLabelColor: ColorsValues.mainGrey,
                tabs: categories
                    .map((category) => Tab(
                          text: category,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
        // const SizedBox(height: 10),
        // Text(
        //   'Sedang berada di ${categories[_tabController.index]}',
        //   style: const TextStyle(fontSize: 18),
        // ),
        const CardNewsBig(),
      ],
    );
  }
}
