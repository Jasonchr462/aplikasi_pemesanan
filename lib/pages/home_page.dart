import 'package:flutter/material.dart';
import 'package:intro_app/pages/pagewrapper.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:animations/animations.dart';

import 'AppData.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static List<Widget> screens = [
    const HomePage(),
    const HomePage(),

  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int newIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: Scaffold(
        bottomNavigationBar: BottomNavyBar(
          itemCornerRadius: 10,
          selectedIndex: newIndex,
          items: AppData.bottomNavyBarItems
              .map(
                (item) => BottomNavyBarItem(
              icon: item.icon,
              title: Text(item.title),
              activeColor: item.activeColor,
              inactiveColor: item.inActiveColor,
            ),
          )
              .toList(),
          onItemSelected: (currentIndex) {
            newIndex = currentIndex;
            setState(() {});
          },
        ),
        body: PageTransitionSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (
              Widget child,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              ) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: HomePage.screens[newIndex],
        ),
      ),
    );
  }
}
