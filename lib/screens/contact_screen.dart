import 'package:flutter/material.dart';
import 'package:hahaha/services/http_service.dart';
import 'package:hahaha/widgets/app_bar.dart';
import 'package:hahaha/widgets/bottom_navigation_bar.dart';
import 'package:hahaha/widgets/counter.dart';
import 'package:hahaha/widgets/drawer.dart';

class ContactScreen extends StatelessWidget with HttpService {
  const ContactScreen({super.key});

  Future<String> getContact() async {
    return HttpService.dio.get<String>('contact').toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Daily Hyuily - Contact'),
      drawer: CustomDrawer(key: UniqueKey()),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Counter(key: UniqueKey()),
    );
  }
}
