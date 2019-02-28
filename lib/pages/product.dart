//In this file we are creating the new page of product details which is called when details is called

import 'package:flutter/material.dart';

import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageurl;

  ProductPage(this.title, this.imageurl);

  //This is the warning dialog box shown when deleting the product
  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure ?'),
            content: Text('This action cannot be undone!'),
            actions: <Widget>[
              FlatButton(
                child: Text('DISCARD'),
                onPressed: () {
                  Navigator.pop(
                      context); //this pop is used to close the dialog.
                },
              ),
              FlatButton(
                child: Text('CONTINUE'),
                onPressed: () {
                  Navigator.pop(
                      context); // this pop is used to close the dialog.
                  Navigator.pop(context,
                      true); //and this is used to navigate to the next page with true value.
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //this widget is used to control what happpens when back is pressed
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(
            false); //do not set this to false as this will triger a pop
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Card Details'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageurl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text('Delete'),
                color: Theme.of(context).accentColor,
                onPressed: () => _showWarningDialog(context),  //using fat arrow notation so that it is only executed when pressed.
              ),
            )
          ],
        ),
      ),
    );
  }
}
