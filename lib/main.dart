import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/HomeScreen.dart';
import 'package:learn/inputs/glbal_key.dart';
import 'package:learn/inputs/text_field.dart';
import 'package:learn/inputs/text_form_field.dart';
import 'package:learn/listeler/sliver_app_bar.dart';
import 'package:learn/navigation/about.dart';
import 'package:learn/navigation/detail.dart';
import 'package:learn/navigation/home.dart';

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
      home: GlobalKeyApp(),
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
