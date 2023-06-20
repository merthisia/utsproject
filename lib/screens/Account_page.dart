import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(AccountApp());
}

class AccountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
}

