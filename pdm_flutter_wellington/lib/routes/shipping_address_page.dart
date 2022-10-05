import 'package:flutter/material.dart';
import 'package:pdm_flutter_wellington/model/addresscache.dart';
import 'package:provider/provider.dart';
import '../route_generator.dart';
import 'form_page.dart';
import 'home_page.dart';

class ShippingAddressPage extends StatefulWidget {

  const ShippingAddressPage({Key? key}) : super(key: key);

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
  void _open(BuildContext context) =>
      Navigator.of(context).pushNamed(RouterGenerator.formPage);
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
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Consumer<AddressCache>(
          builder:(context,cache, _){
            //final item = cache.list[cache.index];
            return ListView.builder(
                itemCount: cache.list.length,
                itemBuilder: ( context,  index) {
                  final item = cache.list[index];
                  return Column(
                    children: [
                      Text(item.name),
                      Text(item.address),
                      Text(item.city),
                      Text(item.state),
                      Text(item.phone),
                      ElevatedButton(
                          onPressed: (){
                           cache.index = index;
                          _open(context);
                          },
                        child: const Text('Adicionar',
                          style: TextStyle(color: Colors.black54),
                        )),
                    ],
                  );
                },

              );
          },
        ),
      ),
    );
  }
}

