import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: Colors.pink,
          child: Text(
            'Show Alter Dialog',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'I am title',
                      style: TextStyle(fontSize: 20),
                    ),
                    content: Text('Hello, I am the content of this title'),
                    actions: [
                      RaisedButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
