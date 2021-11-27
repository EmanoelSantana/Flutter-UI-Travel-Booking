// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_local_variable, avoid_function_literals_in_foreach_calls, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:ui_travel_booking/models/place_model.dart';
import 'package:ui_travel_booking/pages/place_page.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _searchType = 0;

    Column _buildPopularPlaces() {
      List<Widget> popularPlaces = [];
      places.forEach((place) {
        popularPlaces.add(
          Container(
            height: 80.0,
            child: Center(
              child: ListTile(
                leading: Hero(
                  tag: place.imageUrl,
                  child: Image(image: AssetImage(place.imageUrl)),
                ),
                title: Text(
                  place.city,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  '${place.properties} properties',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                trailing: InkResponse(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PlacePage(place: place),
                      ),
                    ),
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xFFFAF6F1),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      });
      return Column(children: popularPlaces);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () => print('Menu'),
                icon: Icon(Icons.menu),
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            'Book unique homes\nands experiences',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: _searchType == 0
                        ? Colors.transparent
                        : Color(0xFFFFC05F),
                  ),
                ),
                color: _searchType == 0 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'Hotels',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  _searchType = 0;
                },
              ),
              FlatButton(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: _searchType == 0
                        ? Colors.transparent
                        : Color(0xFFFFC05F),
                  ),
                ),
                color: _searchType == 1 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'Flights',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  _searchType = 1;
                },
              ),
            ],
          ),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Where',
              icon: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.location_on,
                  size: 25.0,
                  color: Color(0xFF309DF1),
                ),
              ),
            ),
          ),
          Divider(height: 30.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Check-in - Check-out',
              icon: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.calendar_today,
                  size: 25.0,
                  color: Color(0xFF309DF1),
                ),
              ),
            ),
          ),
          Divider(height: 30.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '1 Adults, 0 Children, 1 Room',
              icon: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.person,
                  size: 25.0,
                  color: Color(0xFF309DF1),
                ),
              ),
            ),
          ),
          Divider(height: 20.0),
          FlatButton(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Color(0xFF309DF1),
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => print('Search'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Popular Places',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          _buildPopularPlaces(),
        ],
      ),
    );
  }
}
