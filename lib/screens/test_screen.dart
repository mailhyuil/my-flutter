import 'package:flutter/material.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/drawer.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Test Screen'),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Container(
        color: Colors.pink,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 50,
                color: Colors.blue,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return const SizedBox(
                        width: 50,
                        child: Center(
                            child:
                                Text('test', style: TextStyle(fontSize: 21))));
                  },
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Test Screen'),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
