import 'package:flutter/material.dart';
import 'package:pdm_flutter_wellington/model/addresscache.dart';
import 'package:pdm_flutter_wellington/route_generator.dart';
import 'package:pdm_flutter_wellington/routes/home_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      Provider<AddressCache>(
        create: (_) => AddressCache(),
        child: MaterialApp(
        onGenerateTitle: (context) => "Open Fashion",
          initialRoute: RouterGenerator.homePage,
          onGenerateRoute: RouterGenerator.generateRoute,
          debugShowCheckedModeBanner: false,
        ),
      );
  }
}
