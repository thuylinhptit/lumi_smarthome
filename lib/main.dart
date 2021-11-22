import 'package:flutter/material.dart';
import 'package:lumi_smarthome/body_app.dart';


import 'bottom_nav.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BodyApp(),
    );
  }
}
