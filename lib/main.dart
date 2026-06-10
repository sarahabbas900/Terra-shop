import 'package:flutter/material.dart';
import 'package:stistch_project/bottom_navigation.dart';
import 'package:stistch_project/checkout_page.dart';
import 'package:stistch_project/home_page.dart';
import 'package:stistch_project/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Color(0xFF4A7C59))),
      home: BottomNavigation(),
    );
  }
}
