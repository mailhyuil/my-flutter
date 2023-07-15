import 'package:flutter/material.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/drawer.dart';

final products = [
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
  'Product 1',
  'Product 2',
  'Product 3',
  'Product 4',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Daily Hyuily - Home'),
      drawer: CustomDrawer(key: UniqueKey()),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Column(children: [
        Container(
          color: Colors.brown,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello World',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 400.0,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        color: Colors.amber, child: Text(products[index]));
                  },
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
