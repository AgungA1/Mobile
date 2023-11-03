import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_linkaja/app/widgets/homepage.dart';
import 'package:uts_linkaja/app/widgets/history.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomePage(),
        '/history': (context) => History(),
      },
    );
  }

 

}