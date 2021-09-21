import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String _img =
      "https://blog.ciceksepeti.com/wp-content/uploads/2018/03/hangi-ay-hangi-c%CC%A7ic%CC%A7ek-ekilir.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dictionary"),
        actions: [
          IconButton(
            icon: Icon(Icons.ad_units),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Merhaba Remzi nasılsın")),
            );
          },
          tooltip: "Show Snackbar",
        ),
      ),
      body: OdevDersi(),
    );
  }

  List<Widget> get flexibleDersi {
    return [
      Flexible(
          flex: 2,
          child: Container(width: 200, height: 300, color: Colors.deepOrange)),
      Flexible(
          flex: 2,
          child: Container(width: 200, height: 300, color: Colors.lightBlue)),
    ];
  }

  List<Widget> get expandedDersi {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.green,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          shape: BoxShape.rectangle,
          border: Border.all(width: 4, color: Colors.deepPurple),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(_img),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.green,
              blurRadius: 10,
              offset: Offset(0, 20),
            ),
            BoxShadow(
              color: Colors.redAccent,
              blurRadius: 10,
              offset: Offset(0, -20),
            ),
          ],
        ),
        child: Text(
          "Remzi Flutter",
          style: TextStyle(fontSize: 60, color: Colors.lightGreenAccent),
        ),
      ),
    );
  }
}

class OdevDersi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          odevRow(),
          Expanded(child: odevColumn()),
        ],
      ),
    );
  }

  Widget createContainer(String harf, Color color, bool isExpanded) {
    return isExpanded
        ? Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 4, bottom: 4),
              width: 40,
              height: 40,
              alignment: Alignment.center,
              color: color,
              child: Text(
                harf,
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        : Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            color: color,
            child: Text(
              harf,
              style: TextStyle(fontSize: 24),
            ),
          );
  }

  Column odevColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        createContainer("E", Colors.tealAccent, true),
        createContainer("R", Colors.tealAccent, true),
        createContainer("S", Colors.tealAccent, true),
        createContainer("L", Colors.tealAccent, true),
        createContainer("E", Colors.tealAccent, true),
        createContainer("R", Colors.tealAccent, true),
        createContainer("I", Colors.tealAccent, true),
      ],
    );
  }

  Widget odevRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        createContainer("D", Colors.lightGreen, false),
        createContainer("A", Colors.lightGreen, false),
        createContainer("R", Colors.lightGreen, false),
        createContainer("T", Colors.lightGreen, false),
      ],
    );
  }
}
