import 'package:flutter/material.dart';

class HeroSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Hero(
            tag: "cam",
            child: Icon(
              Icons.add_a_photo,
              size: 250,
            ),
          ),
        ),
      ),
    );
  }
}
