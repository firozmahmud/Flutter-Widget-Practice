import 'package:flutter/material.dart';

class MyToolTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.camera),
              onPressed: () {},
              tooltip: "Camera",
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Tooltip(
              message: "Container",
              child: Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
