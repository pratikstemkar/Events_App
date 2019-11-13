import 'package:events_app/models/attend_model.dart';
import 'package:events_app/models/event_model.dart';
import 'package:events_app/screens/ticket_screen.dart';
import 'package:flutter/material.dart';

class AttendWidget extends StatefulWidget {
  @override
  _AttendWidgetState createState() => _AttendWidgetState();
}

class _AttendWidgetState extends State<AttendWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 10.0,
            bottom: 10.0,
          ),
          child: Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.3,
                  child: Image(
                    image: AssetImage(attends[index].imageUrl),
                    fit: BoxFit.cover,
                    height: 150.0,
                    width: MediaQuery.of(context).size.width - 20.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 25.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            attends[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            attends[index].city,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            events[index].description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            '\$ 200',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Tooltip(
                            message: 'Show Event Ticket',
                            child: FlatButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TicketScreen())),
                              child: Text(
                                'Show Ticket',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
