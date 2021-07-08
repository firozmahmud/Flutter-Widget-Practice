import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var sliderValue = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Hello Flutter',
                style: TextStyle(
                  fontSize: sliderValue,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Slider(
                min: 15,
                max: 65,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
