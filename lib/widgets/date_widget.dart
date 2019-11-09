import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Wednesday',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
                color: Colors.white,
              ),
            ),
            Text(
              '14th August, 2019',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
