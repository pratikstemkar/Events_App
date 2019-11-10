import 'package:events_app/widgets/date_widget.dart';
import 'package:events_app/widgets/event_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DSC Events',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                DateWidget(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        EventWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
