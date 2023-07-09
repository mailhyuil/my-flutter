import 'package:flutter/material.dart';
import 'package:hahaha/widgets/user_list_v2.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'Daily Hyuily',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          color: Colors.brown.shade50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: UserListV2(key: UniqueKey()),
          ),
        ),
        bottomNavigationBar: Container(
          height: 100,
          color: Colors.blueGrey,
          child: const Center(
              child: Text(
            'This is my First App!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black54),
          )),
        ),
      ),
    );
  }
}
