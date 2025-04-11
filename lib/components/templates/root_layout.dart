//templates/root_layout.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/bottom_nav_bar.dart';
import 'home.dart';
import 'memory_hall.dart';
import 'magazine.dart';
import 'my_info.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  //pages
  final List<Widget> _pages = const [
    HomePage(),
    MemoryHallPage(),
    MagazinePage(),
    MyInfoPage(),
  ];

  /// BottomNavigationBar on Tab
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      // appBar: AppBar(
      //   title: const Text('하늘애'),
      //   centerTitle: true,
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // ),

      //pages
      body: _pages[_selectedIndex],

      //bottom nav
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
