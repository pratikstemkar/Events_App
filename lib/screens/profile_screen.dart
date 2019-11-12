import 'package:events_app/widgets/details_widget.dart';
import 'package:events_app/widgets/profileimg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 200.0,
              //color: Colors.red,
              child: ProfileImgWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Jennifer Aniston',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  color: Colors.black,
                  onPressed: () {},
                  tooltip: 'Edit Profile',
                ),
              ],
            ),
            Container(
              height: 400.0,
              // color: Colors.lightBlue,
              child: DetailsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
