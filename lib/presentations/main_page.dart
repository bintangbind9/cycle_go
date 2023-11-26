import 'package:cyclego/constants/app_colors.dart';
import 'package:cyclego/presentations/custom_bottom_navigation_bar_item.dart';
import 'package:cyclego/presentations/home_page/home_page.dart';
import 'package:cyclego/presentations/message_page/message_page.dart';
import 'package:cyclego/presentations/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double heightOfNavBar = 80;
  double navbarIconSize = 32;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  void navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /*
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    final double widthOfNavBarItem =
        MediaQuery.of(context).size.width / _widgetOptions.length;
    final double radiusOfNavBar = heightOfNavBar / 2;
    final int lastIndexNavbarItem = _widgetOptions.length - 1;

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radiusOfNavBar),
            topRight: Radius.circular(radiusOfNavBar),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 40,
              spreadRadius: 0,
              color: AppColors.black.withOpacity(0.2),
            )
          ],
        ),
        height: heightOfNavBar,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavigationBarItem(
              onTap: () => navigateTo(0),
              icon: Icons.home,
              iconSize: navbarIconSize,
              enabled: _selectedIndex == 0,
              index: 0,
              lastIndex: lastIndexNavbarItem,
              radius: radiusOfNavBar,
              itemWidth: widthOfNavBarItem,
            ),
            CustomBottomNavigationBarItem(
              onTap: () => navigateTo(1),
              icon: Icons.messenger,
              iconSize: navbarIconSize,
              enabled: _selectedIndex == 1,
              index: 1,
              lastIndex: lastIndexNavbarItem,
              radius: radiusOfNavBar,
              itemWidth: widthOfNavBarItem,
            ),
            CustomBottomNavigationBarItem(
              onTap: () => navigateTo(2),
              icon: Icons.person,
              iconSize: navbarIconSize,
              enabled: _selectedIndex == 2,
              index: 2,
              lastIndex: lastIndexNavbarItem,
              radius: radiusOfNavBar,
              itemWidth: widthOfNavBarItem,
            ),
          ],
        ),
      ),
      /*
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.purple,
        onTap: _onItemTapped,
      ),
      */
    );
  }
}
