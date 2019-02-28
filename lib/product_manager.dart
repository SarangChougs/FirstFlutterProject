//Here in this file we are managing the products list
//i.e. we are adding new cards to our list of cards.
//This file has statefull widget in it

import 'package:flutter/material.dart';
import './products.dart';

//Here we are creating Statefull widget called ProductManager
//This widget has a map called staringProduct
class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {
    //building the UI of the list
    return Column(
      children: <Widget>[
        Expanded(
          child: Products(products),
        )
      ],
    );
  }
}
