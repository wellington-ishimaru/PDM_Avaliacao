import 'package:flutter/material.dart';
import 'package:pdm_flutter_wellington/routes/blog_page.dart';
import 'package:pdm_flutter_wellington/routes/form_page.dart';
import 'package:pdm_flutter_wellington/routes/home_page.dart';
import 'package:pdm_flutter_wellington/routes/shipping_address_page.dart';

class RouterGenerator{
  static const String homePage = '/';
  static const String blogPage = '/blog';
  static const String formPage = '/form';
  static const String shippingAddress = '/shipping';

  RouterGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage(),
        );
      case blogPage:
    return MaterialPageRoute(builder: (_) => const BlogPage(),
    );
     case formPage:
    return MaterialPageRoute(builder: (_) => const FormPage(),
    );
    case shippingAddress:
    return MaterialPageRoute(builder: (_) => const ShippingAddressPage(),
    );
    default:
      throw const FormatException(
        "Rota nao encontrada",
      );
    }
  }
}