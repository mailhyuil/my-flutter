import 'package:flutter/material.dart';
import 'package:hahaha/screens/contact_screen.dart';
import 'package:hahaha/screens/home_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(key: UniqueKey()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactScreen(key: UniqueKey()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
