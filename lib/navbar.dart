import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'attendance.dart'; // Import the attendance page
import 'main.dart'; // Import the main page
import 'profile.dart'; // Import the profile page

class CustomNavBar extends StatefulWidget {
  final int currentIndex; // Add a parameter to pass the current index

  CustomNavBar({required this.currentIndex});

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.briefcase),
          label: 'Absent',
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.clock),
          label: 'Attendance',
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.user),
          label: 'Profile',
        ),
      ],
      currentIndex: widget.currentIndex, // Use the current index passed from the parent
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        if (index == widget.currentIndex) return; // Do nothing if the selected index is already active

        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), // Adjust as necessary for MainPage
            );
            break;
          case 1:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Attendance()),
            );
            break;
          case 2:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()), // Adjust as necessary for ProfilePage
            );
            break;
        }
      },
    );
  }
}
