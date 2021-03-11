import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(

            content: Text('MOOYAHO~'),
            action: SnackBarAction(

              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.

              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
          // 실제로 화면에 보여주는 코드
          // Scaffold.of(context)
          // showSnackBar <- widget
          // snackBar <- final snackBar = SnackBar(...)
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}