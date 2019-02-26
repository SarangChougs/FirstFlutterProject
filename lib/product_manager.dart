//Here in this file we are managing the products list
//i.e. we are adding new cards to our list of cards.
//This file has statefull widget in it

import 'package:flutter/material.dart';

import './products.dart';

import './product_control.dart';

//Here we are creating Statefull widget called ProductManager
//This widget has a map called staringProduct
class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    //building the UI of the list
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProduct),
        ),
        Expanded(
          child: Products(products, deleteProduct: deleteProduct),
        )
      ],
    );
  }
}
