import 'package:flutter/material.dart';
import 'package:hahaha/screens/contact_screen.dart';
import 'package:hahaha/screens/home_screen.dart';
import 'package:hahaha/screens/test_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lime[700],
            ),
            child: Center(
              child: Row(
                children: [
                  Icon(
                    Icons.perm_contact_cal_sharp,
                    size: 30,
                    color: Colors.lime[900],
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Mail',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Hyuil',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
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
                  builder: (context) => const ContactScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Test'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TestScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
