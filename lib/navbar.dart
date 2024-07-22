import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'attendance.dart'; // Import the attendance page

class CustomNavBar extends StatelessWidget {
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
          label: 'Profil',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Attendance()),
          );
        }
      },
    );
  }
}
