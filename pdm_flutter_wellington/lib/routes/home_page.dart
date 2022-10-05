import 'package:flutter/material.dart';
import 'package:pdm_flutter_wellington/route_generator.dart';
import 'package:pdm_flutter_wellington/routes/blog_page.dart';
import 'package:pdm_flutter_wellington/routes/form_page.dart';
import 'package:pdm_flutter_wellington/routes/shipping_address_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1, 231, 234, 239),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(RouterGenerator.homePage);
          },
          icon: Image(
            width: 50,
            height: 50,
            image: AssetImage('images/Menu.png'),
          ),
          tooltip: 'Navigation menu',
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 80),
          child: Image(
            width: 50,
            height: 50,
            image: AssetImage('images/logo.png'),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(RouterGenerator.formPage);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
           Image(fit: BoxFit.fill, image: AssetImage('images/image_10.png')),
             ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white70,
                  onPrimary: Colors.black,
                 ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(RouterGenerator.blogPage);
              },

              child: const Text('Explore a coleção',
                style: TextStyle(color: Colors.black54),
                  ),
          )
        ],
      )
      );
  }
}
