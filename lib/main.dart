import 'package:flutter/material.dart';
import 'package:flutterportfolio/pages/home_Page.dart';
import 'package:flutterportfolio/pages/home_page_large.dart';
import 'package:flutterportfolio/pages/home_page_mobile.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
