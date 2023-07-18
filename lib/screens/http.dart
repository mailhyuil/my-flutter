import 'package:flutter/material.dart';
import 'package:hahaha/main.dart';
import 'package:hahaha/services/http_service.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/drawer.dart';

class HttpScreen extends StatelessWidget {
  final HttpService _httpService = getIt<HttpService>();
  HttpScreen({Key? key}) : super(key: key);

  getData() async {
    final data = await _httpService.get('http://www.example.com');
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'HTTP TEST'),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: GestureDetector(
        onTap: () {
          getData();
        },
        child: const Center(
          child: Text('HTTP TEST'),
        ),
      ),
    );
  }
}
