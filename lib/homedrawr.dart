import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _widgetOptions = <Widget>[
    Page(),
    Page(),
    Page(),
  ];
  int _currentSelected = 0;
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void _onItemTapped(int index) {
    index == 3
        ? _drawerKey.currentState!.openEndDrawer()
        : setState(() {
            _currentSelected = index;
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      body: _widgetOptions.elementAt(_currentSelected),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _currentSelected,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[800],
        selectedItemColor: const Color.fromRGBO(10, 135, 255, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Page 1',
            icon: Icon(Icons.access_alarm),
          ),
          BottomNavigationBarItem(
            label: 'Page 2',
            icon: Icon(Icons.accessible),
          ),
          BottomNavigationBarItem(
            label: 'Page 3',
            icon: Icon(Icons.adb),
          ),
          BottomNavigationBarItem(
            label: 'Page 4',
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {
  // const Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
