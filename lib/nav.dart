import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/course_screen.dart';
import 'package:task/community.dart';
import 'package:task/profile_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    Course(),
    Community(),
    Profile(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('COURSES'),
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('COMMUNITY'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PROFILE'),
          ),
      ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );

}
}