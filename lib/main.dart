import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Eclipse'),
      ),
      body: Column(
        children: [
          Text('Login Page'),
          Text('Email'),
          Text('Password'),
        ],
      ),
    ));
  }
}
