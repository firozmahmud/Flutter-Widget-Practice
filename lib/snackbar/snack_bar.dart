import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return RaisedButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'I am snackbar',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    duration: Duration(seconds: 10),

                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {

                      },
                    ),
                  ),
                );
              },
              color: Colors.green,
              child: Text(
                'Click Me',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
