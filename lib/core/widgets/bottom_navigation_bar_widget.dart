import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomMavigationbar extends StatelessWidget {
  const BottomMavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.command,
              color: Colors.black,
            ),
            label: 'Prolet',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.handshake_outlined,
                color: Colors.blue,
              ),
              label: 'Meetup'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.folder,
                color: Colors.black,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: Colors.black,
              ),
              label: 'account')
        ]);
  }
}
