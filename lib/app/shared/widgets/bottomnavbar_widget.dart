import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: semiBoldText14,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: themeData.canvasColor,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/home.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/home.png",
            height: 24,
            color: themeData.canvasColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/news.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/news.png",
            height: 24,
            color: themeData.canvasColor,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/matches.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/matches.png",
            height: 24,
            color: themeData.canvasColor,
          ),
          label: 'Matches',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/highlights.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/highlights.png",
            height: 24,
            color: themeData.canvasColor,
          ),
          label: 'Highlights',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/profile.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/profile.png",
            height: 24,
            color: themeData.canvasColor,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
