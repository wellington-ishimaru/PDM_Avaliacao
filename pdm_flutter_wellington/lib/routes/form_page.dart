import 'package:flutter/material.dart';
import 'package:pdm_flutter_wellington/routes/shipping_address_page.dart';

import '../route_generator.dart';
import 'home_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
            onPressed: () {
              // handle the press
            },
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
      body:
      Center(
        child: SingleChildScrollView(
          child: Container(
            height: 650,
            width: 375,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Address',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: cityController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'City',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: stateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'State',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone number',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(RouterGenerator.shippingAddress);
                  },
                  child: Text('Adicionar!'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
