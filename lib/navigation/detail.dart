import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn/navigation/about.dart';

class DetailPage extends StatelessWidget {
  int _randomNumber = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(
            false); //buradaki geri butonu hariç diğer geri butonlar passive edildi
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("DetailPage"),
          automaticallyImplyLeading: false, //geri butonunu kaldırır
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
                child: Text("About"),
              ),
              ElevatedButton(
                onPressed: () {
                  _randomNumber = Random().nextInt(100);
                  Navigator.of(context).pop(_randomNumber);
                },
                child: Text("Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
