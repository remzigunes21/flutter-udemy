import 'package:flutter/material.dart';

class GlobalKeyApp extends StatefulWidget {
  @override
  _GlobalKeyAppState createState() => _GlobalKeyAppState();
}

class _GlobalKeyAppState extends State<GlobalKeyApp> {
  final sayacWidgetKey = GlobalKey<_SayacWidgetState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Key"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Basılma Miktarı"),
            SizedBox(
              height: 10,
            ),
            SayacWidget(key: sayacWidgetKey),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacWidgetKey.currentState.increment();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SayacWidget extends StatefulWidget {
  const SayacWidget({Key key}) : super(key: key);

  @override
  _SayacWidgetState createState() => _SayacWidgetState();
}

class _SayacWidgetState extends State<SayacWidget> {
  int sayac = 0;
  void increment() {
    sayac++;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      sayac.toString(),
      style: TextStyle(fontSize: 44),
    );
  }
}
