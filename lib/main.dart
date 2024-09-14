import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/features/bookmark/bookmark_page.dart';
import 'package:news_wave/features/discover/discover_page.dart';
import 'package:news_wave/features/home/home_news_page.dart';
import 'package:news_wave/features/profile/profile_pagee.dart';
import 'package:news_wave/widgets/button_bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _curentIndex = 0;
  final List<Widget> _pages = [
    const HomeNewsPage(),
    const DiscoverPage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: ColorsValues.backgroundApp,
      body: _pages[_curentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonBottombar(
                icon: Icons.home_filled,
                title: 'Home',
                isSelected: _curentIndex == 0,
                onTap: (){
                  onTapTapped(0);
                }
              ),
              ButtonBottombar(
                icon: Icons.search_rounded,
                title: 'Discover',
                isSelected: _curentIndex == 1,
                onTap: (){
                  onTapTapped(1);
                }
              ),
              ButtonBottombar(
                icon: Icons.bookmark_border_rounded,
                title: 'Bookmark',
                isSelected: _curentIndex == 2,
                onTap: (){
                  onTapTapped(2);
                }
              ),
              ButtonBottombar(
                icon: Icons.person_2_outlined,
                title: 'Profile',
                isSelected: _curentIndex == 3,
                onTap: (){
                  onTapTapped(3);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _curentIndex = index;
    });
  }
}