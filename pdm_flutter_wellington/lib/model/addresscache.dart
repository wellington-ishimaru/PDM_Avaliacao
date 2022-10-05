import 'dart:collection';

import 'package:pdm_flutter_wellington/model/address.dart';

class AddressCache{
  var _index = -1;

  final List<Address> _addresses = [
    Address('Wellington', 'Rua .....', 'Atibaia', 'SP' , '0123456'),
  ];


void addAddress(String name, String address,
String city, String state, String phone){
  _addresses.add(Address(name, address, city, state, phone));
}

int get index => _index;

set index(int value) {
  if ((value >= 0) && (value < _addresses.length)) {
    _index = value;
  } else {
    _index = -1;
  }
}
    UnmodifiableListView<Address> get list =>
      UnmodifiableListView<Address>(_addresses);
}
