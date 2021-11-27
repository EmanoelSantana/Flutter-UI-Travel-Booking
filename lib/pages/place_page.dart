// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_travel_booking/models/place_model.dart';

class PlacePage extends StatelessWidget {
  final Place place;

  PlacePage({required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: place.imageUrl,
                  child: Container(
                    width: double.infinity,
                    height: 500.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(place.imageUrl),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () => print('Menu'),
                        icon: Icon(Icons.menu),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 400.0,
              width: double.infinity,
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${place.city}, ${place.country}',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Icon(Icons.event_available,
                            size: 60.0, color: Colors.black),
                        SizedBox(width: 15.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Tour of ${place.city}',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Duration: 6 hours',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20.0),
        height: 130.0,
        decoration: BoxDecoration(
          color: Color(0xFF1D4383),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${place.properties}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Properties Found',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
              color: Color(0xFFDFF1FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: Color(0xFF309DF1),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => print('See All'),
            )
          ],
        ),
      ),
    );
  }
}
