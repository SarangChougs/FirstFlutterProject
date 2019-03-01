//This is the admin page where we can add details about the product and add it to the list

import 'package:flutter/material.dart';
import './product_create.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    Navigator.pushNamed(context, 'productlist');
                  },
                ),
                ListTile(
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Settings'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.create),
                  text: 'Create Products',
                ),
                Tab(icon: Icon(Icons.add), text: 'Add Products'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductCreatePage(addProduct),
              ProductAddPage(),
            ],
          )),
    );
  }
}
