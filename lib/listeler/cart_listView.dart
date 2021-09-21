import 'package:flutter/material.dart';

class CartListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart List"),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                singleListElementCard(),
                singleListElementCard(),
                singleListElementCard(),
                singleListElementCard(),
                singleListElementCard(),
                singleListElementCard(),
                singleListElementCard(),
                singleListElementCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView buildSingleChildScrollViewUses() {
    return SingleChildScrollView(
      child: Column(
        children: [
          singleListElementCard(),
          singleListElementCard(),
          singleListElementCard(),
          singleListElementCard(),
          singleListElementCard(),
          singleListElementCard(),
          singleListElementCard(),
          singleListElementCard(),
        ],
      ),
    );
  }

  Column singleListElementCard() {
    return Column(
      children: [
        Card(
          elevation: 0.5,
          shadowColor: Colors.blue,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.album),
                title: Text("Bu bir list text tir"),
                subtitle: Text("Bu listenin son subTitle dır"),
                trailing: Icon(Icons.access_time_sharp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Buy Tickets"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Listen"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
              Divider(
                color: Colors.amber,
                height: 10,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
