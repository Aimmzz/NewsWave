import 'package:flutter/material.dart';
import 'package:news_wave/widgets/header_home.dart';
import 'package:news_wave/widgets/tab_bar_category.dart';

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
      ],
    );
  }
}
