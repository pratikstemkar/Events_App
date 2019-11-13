import 'package:flutter/material.dart';

class AttendScreen extends StatefulWidget {
  @override
  _AttendScreenState createState() => _AttendScreenState();
}

class _AttendScreenState extends State<AttendScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  ,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
