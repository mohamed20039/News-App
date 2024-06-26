import 'package:flutter/material.dart';
import 'package:news_app/Src/Screens/news_screen.dart';
import 'package:news_app/Src/Screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userName = "Loading...";
  int _selectedIndex = 0; // Index of the current tab

  @override
  void initState() {
    super.initState();
  }

  // Navigation items
  static const List<Widget> _widgetOptions = <Widget>[
    NewsScreen(), // Replace with your home screen widget
    // Replace with your settings screen widget
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
