import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavigationBarCompo extends StatefulWidget {
  const BottomNavigationBarCompo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarCompo> createState() =>
      _BottomNavigationBarCompoState();
}

class _BottomNavigationBarCompoState extends State<BottomNavigationBarCompo> {
  int _selectedIndex = 1; // Index of the selected item

  // Function to handle item selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black.withOpacity(0.3),
      // Color of the selected item icon and text
      selectedItemColor: Colors.blue,

      // Color of the unselected item icon and text
      unselectedItemColor: Colors.grey,

      // Index of the currently selected item
      currentIndex: _selectedIndex,

      // Callback function when an item is tapped
      onTap: _onItemTapped,

      // List of bottom navigation bar items
      items: <BottomNavigationBarItem>[
        // Bottom navigation bar item 1: Home
        BottomNavigationBarItem(
          backgroundColor: Colors.black.withOpacity(0.3),
          icon: Image.asset(
            'Assets/Icons/home.png',
            width: 24, // Adjust icon width if needed
            height: 24, // Adjust icon height if needed
          ),
          label: '', // Empty label as we're using icons only
        ),

        // Bottom navigation bar item 2: Clips
        BottomNavigationBarItem(
          backgroundColor: Colors.black.withOpacity(0.3),
          icon: Image(
            image: AssetImage('Assets/Icons/clips.png'),
          ),
          label: '',
        ),

        // Bottom navigation bar item 3: Libraries
        BottomNavigationBarItem(
          backgroundColor: Colors.black.withOpacity(0.3),
          icon: Image(
            image: AssetImage('Assets/Icons/libraries.png'),
          ),
          label: '',
        ),

        // Bottom navigation bar item 4: Chats
        BottomNavigationBarItem(
          backgroundColor: Colors.black.withOpacity(0.3),
          icon: Image(
            image: AssetImage('Assets/Icons/chats.png'),
          ),
          label: '',
        ),

        // Bottom navigation bar item 5: More
        BottomNavigationBarItem(
          backgroundColor: Colors.black.withOpacity(0.3),
          icon: Image(
            image: AssetImage('Assets/Icons/more.png'),
          ),
          label: '',
        ),
      ],
    );
  }
}
