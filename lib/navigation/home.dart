import 'package:flutter/material.dart';
import 'package:learn/navigation/detail.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                int _popNumber = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );

                print("Detail sayfasındaki sayı= $_popNumber");
              },
              child: Text("Detail"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red.shade400),
              onPressed: () {
                Navigator.pushNamed(context, "/detail2"); //routeMap
              },
              child: Text(
                "Detail",
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
