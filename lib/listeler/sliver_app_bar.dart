import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomScrollViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Aljen"),
              background:
                  Image.asset("assets/images/remzi.png", fit: BoxFit.cover),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(buildDelegeateDynamic,
                  childCount: 6),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(buildDelegateDynmaicGridList,
                  childCount: 6),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDelegateDynmaicGridList(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: buildColorsDynamic(),
      child: Text(
        "Remzi And Nejla",
        textAlign: TextAlign.center,
      ),
    );
  }

  Color buildColorsDynamic() => Color.fromRGBO(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        1,
      );

  Widget buildDelegeateDynamic(BuildContext context, int index) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.amber[100 * (index % 9)],
    );
  }
}
