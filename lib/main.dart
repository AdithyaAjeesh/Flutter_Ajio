import 'package:flutter/material.dart';
import 'package:flutter_ajio_clone_app/Widgets/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
