import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimatedCrossFade extends StatefulWidget {
  @override
  _MyAnimatedCrossFadeState createState() => _MyAnimatedCrossFadeState();
}

class _MyAnimatedCrossFadeState extends State<MyAnimatedCrossFade> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Click Me',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isChecked = true;
                    });
                  },
                ),
              ),
              secondChild: Text(
                'Login success',
                style: TextStyle(fontSize: 25),
              ),
              crossFadeState: isChecked
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
