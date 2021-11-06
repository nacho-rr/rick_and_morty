import 'package:flutter/material.dart';

import '../character/character_page.dart';
import '../location/location_page.dart';
import '../episode/episode_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  renderItem<Widget>(_currentIndex) {
    switch(_currentIndex) {
      case 0: {
        return CharacterPage();
      }

      case 1: {
        return LocationPage();
      }

      case 2: {
        return EpisodePage();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.lightGreen,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Characters',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Locations',
            icon: Icon(Icons.place)
          ),
          BottomNavigationBarItem(
            label: 'Episodes',
            icon: Icon(Icons.ondemand_video),
          ),
        ],
      ),
      body: renderItem(_currentIndex),
    );
  }
}