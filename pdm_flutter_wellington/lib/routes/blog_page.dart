import 'package:flutter/material.dart';
import 'package:pdm_flutter_wellington/routes/home_page.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1, 231, 234, 239),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
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
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              child: Stack(
            alignment: Alignment.center,
            children: const [
              Image(
                width: 343,
                height: 234,
                image: AssetImage('images/blog_1.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text("2021 STYLE GUIDE: THE BIGGEST FALL TRENDS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          )),
          Container(
              child: Stack(
            alignment: Alignment.center,
            children: const [
              Image(
                width: 343,
                height: 234,
                image: AssetImage('images/blog_2.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text("2021 STYLE GUIDE: THE BIGGEST FALL TRENDS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          )),
          Container(
              child: Stack(
            alignment: Alignment.center,
            children: const [
              Image(
                width: 343,
                height: 234,
                image: AssetImage('images/blog_3.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text("2021 STYLE GUIDE: THE BIGGEST FALL TRENDS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          )),
          Container(
              child: Stack(
            alignment: Alignment.center,
            children: const [
              Image(
                width: 343,
                height: 234,
                image: AssetImage('images/blog_4.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text("2021 STYLE GUIDE: THE BIGGEST FALL TRENDS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
