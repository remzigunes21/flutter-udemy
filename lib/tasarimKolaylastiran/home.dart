import 'package:flutter/material.dart';
import 'package:learn/tasarimKolaylastiran/bottomScreen/busines_bottom.dart';
import 'package:learn/tasarimKolaylastiran/bottomScreen/home_bottom.dart';
import 'package:learn/tasarimKolaylastiran/bottomScreen/school_bottom.dart';
import 'package:learn/tasarimKolaylastiran/bottomScreen/search_bottom.dart';
import 'package:learn/tasarimKolaylastiran/bottomScreen/settings_bottom.dart';
import 'package:learn/tasarimKolaylastiran/bottom_navigation.dart';
import 'package:learn/tasarimKolaylastiran/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItem = 0;
  List<Widget> tumSayfalar;
  HomeBottom homeBottom;
  SearchBottom searchBottom;
  SettingsBottom settingsBottom;
  SchoolBottom schoolBottom;
  BusinesBottom businesBottom;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeBottom = HomeBottom();
    searchBottom = SearchBottom();
    settingsBottom = SettingsBottom();
    schoolBottom = SchoolBottom();
    businesBottom = BusinesBottom();

    tumSayfalar = [
      homeBottom,
      searchBottom,
      settingsBottom,
      businesBottom,
      schoolBottom
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım Widgetlar"),
      ),
      drawer: DrawerApp(),
      bottomNavigationBar: BottomBarmenu(
        onTabNavigator: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
      ),
      body: tumSayfalar[_selectedItem],
    );
  }
}
