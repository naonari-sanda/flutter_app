import 'package:flutter/material.dart';

// Routeファイル
import '../pages/categories.dart';
import '../pages/community.dart';
import '../pages/home.dart';
import '../pages/profile.dart';
import '../pages/rewards.dart';

class Root extends StatefulWidget {
  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<Root> {
  int _selectedIndex = 0;
  static const color = Colors.black;

  // Route
  var _routes = [
    Home(),
    Categories(),
    Community(),
    Rewards(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'CATEGORIES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment_rounded),
            label: 'COMMUNITY',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'REWARDS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pinkAccent, //選んだ物の色
        unselectedItemColor: Colors.black45,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
