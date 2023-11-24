import 'package:flutter/material.dart';
import 'package:widgets/pages/favourite_page.dart';
import 'package:widgets/pages/home_page.dart';
import 'package:widgets/pages/menu_page.dart';
import 'package:widgets/pages/person_page.dart';
import 'package:widgets/pages/savings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    FavouritePage(),
    PersonPage(), //schedule Icon
    MenuPage(),
    // SavingPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        selectedItemColor: Colors.greenAccent,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined), label: 'Spend'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Schedule'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined), label: 'Menu'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.person_outlined), label: 'Account'),
        ],
      ),
    );
  }
}
