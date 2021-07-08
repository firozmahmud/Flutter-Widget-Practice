import 'dart:ui';

import 'package:flutter/material.dart';

class MyBackDropFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.blue,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
