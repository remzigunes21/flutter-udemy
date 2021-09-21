import 'package:flutter/material.dart';

class GridViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView List"),
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext buildContext) {
                      return AlertDialog(
                        title: Text("hello"),
                      );
                    });
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: EdgeInsets.all(5),
                child: const Text(
                  "Flutter Learn",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade200,
                      offset: Offset(5, 5),
                    ),
                  ],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange, width: 10),
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.teal[100 * ((index + 1) % 8)],
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.limeAccent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter),
                  image: DecorationImage(
                    image: AssetImage("assets/images/dayi.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            );
          }),
    );
  }

  GridView buildGridViewExtent() {
    return GridView.extent(
      //genişlik kadar yer kapla
      maxCrossAxisExtent: 300,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(6),
      primary: false,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }

  GridView buildGridViewCount() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(6),
      primary: false,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}
