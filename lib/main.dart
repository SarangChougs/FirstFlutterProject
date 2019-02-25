//This file is the starting page of our app
//Here we load the homePage

import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/product_settings.dart';
import './pages/products.dart';

//main function
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      //home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(),
        '/settings': (BuildContext context) => ProductSettings()
      },
    );
  }
}
