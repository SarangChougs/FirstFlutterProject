import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // todo: implement createState
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _usernameValue;
  String _passwordValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Username'),
                  onChanged: (String user) {
                   setState(() {
                    _usernameValue = user; 
                   });
                  },
                  keyboardType:TextInputType.text ,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                  onChanged: (String user) {
                   setState(() {
                    _passwordValue = user; 
                   });
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text('Login'),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/products');
                  },
                )
              ],
            )
          )
        ));
  }
}
