import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue;
  double priceValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product Title'),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
            keyboardType: TextInputType.text,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Description'),
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
            maxLines: 4,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Price'),
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
            keyboardType: TextInputType.number,
          ),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
