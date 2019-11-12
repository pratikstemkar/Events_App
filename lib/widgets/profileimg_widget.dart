import 'package:flutter/material.dart';

class ProfileImgWidget extends StatefulWidget {
  @override
  _ProfileImgWidgetState createState() => _ProfileImgWidgetState();
}

class _ProfileImgWidgetState extends State<ProfileImgWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: Ink.image(
        image: AssetImage('assets/images/6.jpg'),
        fit: BoxFit.cover,
        width: 150.0,
        height: 150.0,
        child: InkWell(
          onTap: () {},
        ),
      ),
    );
  }
}
