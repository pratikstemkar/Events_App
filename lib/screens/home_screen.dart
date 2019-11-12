import 'package:events_app/screens/attend_screen.dart';
import 'package:events_app/screens/profile_screen.dart';
import 'package:events_app/screens/start_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _currentTab = 0;

  List<Widget> _screenList = [
    StartScreen(),
    AttendScreen(),
    ProfileScreen(),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _screenList.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
            tooltip: 'Search',
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: _screenList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
            _tabController.animateTo(value);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Tooltip(
              child: Icon(Icons.home),
              message: 'Home',
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Tooltip(
              child: Icon(Icons.event_seat),
              message: 'Attend Event',
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Tooltip(
              child: Icon(Icons.account_circle),
              message: 'Profile',
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
