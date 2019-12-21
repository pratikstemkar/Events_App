import 'package:events_app/widgets/details_widget.dart';
import 'package:events_app/widgets/profileimg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              // color: Theme.of(context).primaryColor,
              child: ProfileImgWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Jennifer',
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
              child: DetailsWidget(),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox.fromSize(
              child: SvgPicture.asset('assets/svg_img/profile_girl.svg'),
              size: Size(150.0, 150.0),
            ),
          ],
        ),
      ),
    );
  }
}
