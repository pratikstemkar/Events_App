import 'package:events_app/widgets/attend_widget.dart';
import 'package:flutter/material.dart';

class AttendScreen extends StatefulWidget {
  @override
  _AttendScreenState createState() => _AttendScreenState();
}

class _AttendScreenState extends State<AttendScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: AttendWidget(),
    );
  }
}
