import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/model/news.dart';
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
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
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
          const SizedBox(height: 10),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: categories.map((category) {
                final categoryNews = newsList.where((news) => news.category == category).toList();
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryNews.length,
                  itemBuilder: (context, index) {
                    final news = categoryNews[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: CardNewsBig(news: news),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
