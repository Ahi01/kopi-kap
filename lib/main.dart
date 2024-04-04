import 'package:flutter/material.dart';
import 'package:test_1/community/menu_community/community.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Community(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        buttonTheme: const ButtonThemeData(alignedDropdown: true),
      ),
    );
  }
}
