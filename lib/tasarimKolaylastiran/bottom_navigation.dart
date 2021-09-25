import 'package:flutter/material.dart';

class BottomBarmenu extends StatefulWidget {
  final Function onTabNavigator;

  const BottomBarmenu({Key key, @required this.onTabNavigator})
      : super(key: key);
  @override
  _BottomBarmenuState createState() => _BottomBarmenuState();
}

class _BottomBarmenuState extends State<BottomBarmenu> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onTabNavigator(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.amber[800],
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
            backgroundColor: Colors.red.shade400,
          ),
          BottomNavigationBarItem(
            label: "Search",
            backgroundColor: Colors.red.shade500,
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            backgroundColor: Colors.red.shade600,
            icon: Icon(
              Icons.settings,
            ),
          ),
          BottomNavigationBarItem(
            label: "Business",
            backgroundColor: Colors.red.shade700,
            icon: Icon(
              Icons.business,
            ),
          ),
          BottomNavigationBarItem(
            label: "School",
            backgroundColor: Colors.red.shade800,
            icon: Icon(
              Icons.verified_user_sharp,
            ),
          ),
        ]);
  }
}
