//This file is the starting page of our app
//Here we load the homePage

import 'package:flutter/material.dart';
import './pages/auth.dart';
import './pages/products_admin.dart';
import './pages/products.dart';
import './pages/product.dart';
//import 'package:flutter/rendering.dart';

//main function
void main() {
  //debugPaintSizeEnabled = true;    // this is used to show size , dimensions, lines of the UI.
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //todo: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _products = []; //this is the list of products

  //This function adds product to the list of products.
  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      //Changing the state
      _products.add(product); //adding the new card
    });
  }

  //This Function deletes the product from the list
  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      //home: AuthPage(),
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/settings': (BuildContext context) => ProductsAdminPage(_addProduct,
            _deleteProduct), //passing these two values to admin page as this is where we will add or delete the product.
        '/products': (BuildContext context) => ProductsPage(_products)
      },
      onGenerateRoute: (RouteSettings settings) {
        //eg route '/product/2'
        final List<String> pathElements = settings.name.split(
            '/'); //Creating a list which will store the name_elements of the route

        if (pathElements[0] != '') {
          // checking if first element of route is a null element or not
          return null; // if it is not null then return null as the route is invalid
        }

        if (pathElements[1] == 'product') {
          //checking if the route contains product int the route name, loading the route iff it is present in the route
          final int index = int.parse(pathElements[
              2]); //converting the last element of the route into integer which is index.
          return MaterialPageRoute<bool>(
            //returning the Products page
            builder: (BuildContext context) => ProductPage(
                _products[index]['title'], _products[index]['image']),
          );
        }
        return null;
      },

      //creating an unknown route in case the generate page route returns null this will run
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ProductsPage(_products));
      },
    );
  }
}
