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
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage('assets/background.jpg'),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.white),
                  onChanged: (String user) {
                    setState(() {
                      _usernameValue = user;
                    });
                  },
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                  onChanged: (String password) {
                    setState(() {
                      _passwordValue = password;
                    });
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SwitchListTile(
                  value: _acceptTerms,
                  onChanged: (bool value) {
                    setState(() {
                      _acceptTerms = value;
                    });
                  },
                  title: Text('Accept Terms'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/products');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
