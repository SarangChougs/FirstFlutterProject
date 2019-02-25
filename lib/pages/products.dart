//Here in this file we are defining our home page
//Here we call ProductManager method
//This method hold the body of home page

import 'package:flutter/material.dart';

import '../product_manager.dart';


class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          // this widget is used to add a drawer to the page
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/settings');
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Products'),
        ),
        body: ProductManager());
  }
}
