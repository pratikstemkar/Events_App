import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 20.0,
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
