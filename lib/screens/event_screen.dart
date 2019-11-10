import 'package:events_app/models/event_model.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  final Event event;

  EventScreen({this.event});

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Hero(
            tag: widget.event.imageUrl,
            child: Image(
              height: MediaQuery.of(context).size.width,
              image: AssetImage(widget.event.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
