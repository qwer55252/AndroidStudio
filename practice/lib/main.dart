import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('주경서 그리스도 '),
        ),
        body: Center(
          child: Text('김경서 찬양하리 '),
        )
      ),
    );
  }
}


