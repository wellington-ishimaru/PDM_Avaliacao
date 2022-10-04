import 'package:flutter/material.dart';
import 'package:pdm_flutter_wellington/routes/blog_page.dart';
import 'package:pdm_flutter_wellington/routes/form_page.dart';
import 'package:pdm_flutter_wellington/routes/home_page.dart';
import 'package:pdm_flutter_wellington/routes/shipping_address_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP',
      theme: ThemeData.light(),
      home: HomePage(),
      );
  }
}
