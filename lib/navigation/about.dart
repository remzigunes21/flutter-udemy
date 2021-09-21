import 'package:flutter/material.dart';
import 'package:learn/navigation/home.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutPage"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Homepage(),
                  ),
                );
              },
              child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
