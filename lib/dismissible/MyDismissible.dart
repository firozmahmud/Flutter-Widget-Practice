import 'package:flutter/material.dart';

class MyDismissible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          background: Container(
            color: Colors.blue,
            child: Icon(Icons.delete),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            child: Icon(Icons.delete),
          ),
          key: Key("abc"),
          child: ListTile(
            title: Text(
              'I am title',
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text('I am the subtitle'),
            trailing: Icon(Icons.ac_unit),
          ),
        ),
      ),
    );
  }
}
