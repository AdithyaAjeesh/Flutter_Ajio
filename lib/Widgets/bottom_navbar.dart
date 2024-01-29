import 'package:flutter/material.dart';
import 'package:flutter_ajio_clone_app/Screens/account_screen.dart';
import 'package:flutter_ajio_clone_app/Screens/bag_screen1.dart';
import 'package:flutter_ajio_clone_app/Screens/home_screen.dart';
import 'package:flutter_ajio_clone_app/Screens/store_screen.dart';
import 'package:flutter_ajio_clone_app/Screens/wishlist_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const AccountScreen(),
    const WishList(),
    const ScreenBag()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Bag',
          ),
        ],
        showSelectedLabels: true,
        elevation: 1,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
