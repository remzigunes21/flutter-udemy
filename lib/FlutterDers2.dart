import 'package:flutter/material.dart';

class Ders extends StatefulWidget {
  @override
  _DersState createState() => _DersState();
}

class _DersState extends State<Ders> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterText(),
            Text(
              _count.toString(),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count--;
          });
        },
      ),
      title: Text("Counter App"),
      actions: [],
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Count Sayısı",
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
