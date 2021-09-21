import 'package:flutter/material.dart';

class PopupApp extends StatefulWidget {
  @override
  _PopupAppState createState() => _PopupAppState();
}

class _PopupAppState extends State<PopupApp> {
  List<String> pages = ["Home", "Search", "About", "Settings"];
  String _selectedPage = "";
  @override
  Widget build(BuildContext context) {
    return Center(
        child: PopupMenuButton<String>(
      onSelected: (value) {
        setState(() {
          _selectedPage = value;
        });
      },
      //child: Text(_selectedPage),
      itemBuilder: (BuildContext context) {
        // return <PopupMenuEntry<String>>[
        //   PopupMenuItem(
        //     child: Text("Home"),
        //     value: "Home",
        //   ),
        //   PopupMenuItem(
        //     child: Text("Search"),
        //     value: "Search",
        //   ),
        //   PopupMenuItem(
        //     child: Text("About"),
        //     value: "About",
        //   ),
        // ];
        return pages.map((item) {
          return PopupMenuItem(child: Text(item), value: item);
        }).toList();
      },
    ));
  }
}
