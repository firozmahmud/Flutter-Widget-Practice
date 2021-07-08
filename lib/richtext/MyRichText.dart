import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
            text: TextSpan(
                text: "Don't have account ? ",
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  TextSpan(
                    text: "Click here",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
