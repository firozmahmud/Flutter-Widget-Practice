import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text(
            'Click Me',
            style: TextStyle(color: Colors.pink, fontSize: 25),
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height / 3,
                    color: Colors.grey,
                  );
                });
          },
        ),
      ),
    );
  }
}
