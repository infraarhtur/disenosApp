import 'package:flutter/material.dart';
import 'package:disenos/pages/basico_page.dart';
import 'package:disenos/pages/botones_page.dart';
import 'package:disenos/pages/scroll_page.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
  statusBarColor: Colors.transparent,
  statusBarIconBrightness:  Brightness.light
));

    return MaterialApp(
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
