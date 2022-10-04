import 'package:flutter/material.dart';
import 'form_page.dart';
import 'home_page.dart';

class ShippingAddressPage extends StatefulWidget {

  const ShippingAddressPage({Key? key}) : super(key: key);

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Shipping Address'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name'),
              Text('Address'),
              Text('City'),
              Text('State'),
              Text('Phone'),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              },
              child: Text('Add'))
        ],
      )
    );
  }
}

