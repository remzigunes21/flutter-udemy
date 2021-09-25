import 'package:flutter/material.dart';

class CustomFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Fonts Kullanıldı",
          style: TextStyle(fontFamily: "Roboto"),
        ),
      ),
      body: Center(
        child: Text(
          "Flutter mükemmel bir UI/UX dili",
          style: TextStyle(fontFamily: "Roboto", fontSize: 30),
        ),
      ),
    );
  }
}
