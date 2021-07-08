import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_network/hero_widget/hero_second_page.dart';

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: GestureDetector(
            child: Hero(
              tag: "cam",
              child: Icon(
                Icons.add_a_photo,
                size: 50,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HeroSecondPage()));
            },
          ),
        ),
      ),
    );
  }
}
