import 'package:flutter/material.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/drawer.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(text: 'Daily Hyuily - Detail'),
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Center(
        child: Text(
          'Detail Screen',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
