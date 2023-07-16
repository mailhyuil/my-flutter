import 'package:flutter/material.dart';
import 'package:hahaha/screens/detail_screen.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/drawer.dart';

final list = [
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
  'Image',
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
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) =>
                                DetailScreen(key: UniqueKey()),
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black12,
                            border: Border.symmetric(
                                horizontal: BorderSide(
                                    width: 2, color: Colors.black26))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text('${index + 1}',
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold)),
                                  const Text(' - ',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  Text(list[index],
                                      style: const TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  image: NetworkImage(
                                      'https://picsum.photos/250?image=$index'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
