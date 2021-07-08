import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: isChecked
              ? MediaQuery.of(context).size.height / 6
              : MediaQuery.of(context).size.height / 9,
          width: isChecked
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width / 1.5,
          color: Colors.pink,
          duration: Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
      ),
    );
  }
}
