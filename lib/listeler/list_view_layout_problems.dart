import 'package:flutter/material.dart';

class ListViewLayoutProblems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Layout Problems"),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true, //çocuklar kadar yer kapla
                children: [
                  Container(
                    width: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 200,
                    color: Colors.black,
                  ),
                  Container(
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 200,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
      ),
    );
  }

  Column buildColumnInListView() {
    return Column(
      children: [
        Text("Start Column"),
        Expanded(
          child: ListView(
            shrinkWrap: true, //çocuklar kadar yer kapla
            children: [
              Container(
                height: 200,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                color: Colors.black,
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        Text("End Column"),
      ],
    );
  }
}
