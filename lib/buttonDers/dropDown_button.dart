import 'package:flutter/material.dart';

class DropDownButtonApp extends StatefulWidget {
  @override
  _DropDownButtonAppState createState() => _DropDownButtonAppState();
}

class _DropDownButtonAppState extends State<DropDownButtonApp> {
  String _dropdownValue = null;
  List<String> cityList = [
    'izmir',
    'istanbul',
    'diyarbakır',
    'antalya',
    "adıyaman"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        hint: Text("Selected City"),
        value: _dropdownValue,
        onChanged: (value) {
          setState(() {
            _dropdownValue = value;
          });
        },
        underline: Container(
          height: 2,
          width: 20,
          color: Colors.deepPurpleAccent,
        ),
        elevation: 16,
        icon: Icon(Icons.arrow_downward),
        iconSize: 26,
        style: const TextStyle(color: Colors.red),
        items: cityList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
