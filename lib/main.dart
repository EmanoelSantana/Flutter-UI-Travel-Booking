// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_travel_booking/pages/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel Booking UI',
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}
