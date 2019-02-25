//Here in this file we are managing the products list
//i.e. we are adding new cards to our list of cards.
//This file has statefull widget in it

import 'package:flutter/material.dart';

import './products.dart';

import './product_control.dart';

//Here we are creating Statefull widget called ProductManager
//This widget has a map called staringProduct
class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct});       //constructor   //used in main file

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];          //creating a list named products of type map  

  @override
  void initState() {
    if (widget.startingProduct != null) {           //adding to the list if  something is in the list
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  void _addProduct(Map<String, String> product) {
    setState(() {                                //Changing the state 
      _products.add(product);                   //adding the new card
    });
  }

  void _deleteProduct(int index){
    setState(() {
          _products.removeAt(index);
        });
  }

  @override
  Widget build(BuildContext context) {            //building the UI of the list 
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(
          child: Products(_products, deleteProduct: _deleteProduct),
        )
      ],
    );
  }
}
