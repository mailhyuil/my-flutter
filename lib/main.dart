import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hahaha/screens/home.dart';
import 'package:hahaha/services/http_service.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<HttpService>(HttpService());
}

void main() {
  setupLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (context) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'My First App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
