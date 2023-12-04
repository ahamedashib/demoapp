import 'package:demoapp/pages/favoritepage.dart';
import 'package:demoapp/pages/homepage.dart';
import 'package:demoapp/pages/notificationpage.dart';
import 'package:demoapp/pages/userpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomePage();

    if (_selectedPageIndex == 1) {
      activePage = FavoritePage(itemList: []);
    }
    if (_selectedPageIndex == 3) {
      activePage = UserPage();
    }
    if (_selectedPageIndex == 2) {
      activePage = NotificationsPage();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 5,
        onTap: (index) => _selectPage(index), 
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/clarity_home-solid.svg"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/marker 1.svg"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/bell.svg"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Group.svg"),
            label: '',
          ),
        ],
      ),
    );
  }
}
