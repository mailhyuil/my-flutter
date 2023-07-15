import 'package:flutter/material.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Daily Hyuily - Home'),
      drawer: CustomDrawer(key: UniqueKey()),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: const Text('Home Screen'),
    );
  }
}
