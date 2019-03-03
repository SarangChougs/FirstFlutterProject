//Here in this file we are defining our home page
//Here we call ProductManager method
//This method hold the body of home page

import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage(this.products);
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
                leading: Icon(
                  Icons.settings,
                ),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/settings');
                }),
            ListTile(
              leading: Icon(Icons.lock_open),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Products'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      body: ProductManager(products),
    );
  }
}
