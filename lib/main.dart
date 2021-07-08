import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_network/date_time/MyDateTime.dart';
import 'package:flutter_app_network/page_view/page_view.dart';
import 'package:flutter_app_network/richtext/MyRichText.dart';
import 'package:flutter_app_network/slider/MySlider.dart';
import 'package:flutter_app_network/snackbar/snack_bar.dart';
import 'package:flutter_app_network/switch/MySwitch.dart';
import 'package:flutter_app_network/tooltip/MyToolTip.dart';

import 'alert_dialog/alert_dialog.dart';
import 'animated_container/MyAnimatedContainer.dart';
import 'animated_cross_fade/MyAnimatedCrossFade.dart';
import 'backdrop_filter/MyBackDropFilter.dart';
import 'bottom_nav/bottom_nav.dart';
import 'bottom_sheet/bottom_sheet.dart';
import 'check_box/MyCheckBox.dart';
import 'dismissible/MyDismissible.dart';
import 'drop_down_menu/drop_down_menu.dart';
import 'expansion_tile/expansion_tile.dart';
import 'hero_widget/hero_widget.dart';
import 'home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.pink));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: MyDateTime(),
      ),
    );
  }
}
