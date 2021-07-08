import 'package:flutter/material.dart';
import 'package:flutter_app_network/page_view/first_page.dart';
import 'package:flutter_app_network/page_view/second_page.dart';
import 'package:flutter_app_network/page_view/third_page.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
