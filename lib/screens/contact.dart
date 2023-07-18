import 'package:flutter/material.dart';
import 'package:hahaha/services/http_service.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/counter_stateless.dart';
import 'package:hahaha/widgets/drawer.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(text: 'Provider Test'),
        drawer: const CustomDrawer(),
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: CounterStateless());
  }
}
