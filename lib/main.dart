import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/inputs/stepper.dart';
import 'package:learn/tasarimKolaylastiran/custom_fonnts.dart';
import 'package:learn/tasarimKolaylastiran/drawer.dart';
import 'package:learn/tasarimKolaylastiran/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.pinkAccent, accentColor: Colors.purple),
      home: Home(),
      // routes: {
      //   //route map api
      //   "/": (context) => TextFieldApp(),
      //   "/detail": (context) => DetailPage(),
      //   "/about": (context) => AboutPage()
      // },

      // onUnknownRoute: (settings) => MaterialPageRoute(
      //   builder: (context) => Scaffold(
      //     appBar: AppBar(
      //       title: Text("Error"),
      //     ),
      //     body: Center(
      //       child: Text(
      //         "404",
      //         style: TextStyle(
      //             color: Colors.amber,
      //             fontSize: 24,
      //             fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
