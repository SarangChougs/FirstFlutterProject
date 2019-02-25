// Here in this file we are defining the button which is adding the cards
//Has a stateless Widget

import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;     //a variable of type function used to store the reference of the function

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(          //The add card button
      color: Theme.of(context).primaryColor,
      onPressed: () {             //on pressing it we call addProduct which is defined in ProductManager
        addProduct({'title': 'Chocolate', 'image':'assets/space.jpg'});
      },
      child: Text('Add Card'),
    );
  }
}
