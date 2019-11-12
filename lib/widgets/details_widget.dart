import 'package:flutter/material.dart';

class DetailsWidget extends StatefulWidget {
  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'pratiktemkarofficial@gmail.com',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Phone',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '9325674212',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'College/Organisation',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Modern Education Society\'s College of Engineering, Pune',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
