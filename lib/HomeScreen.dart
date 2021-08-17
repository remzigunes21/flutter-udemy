import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _img =
        "https://blog.ciceksepeti.com/wp-content/uploads/2018/03/hangi-ay-hangi-c%CC%A7ic%CC%A7ek-ekilir.jpg";
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
      body: Center(
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
      ),
    );
  }
}
