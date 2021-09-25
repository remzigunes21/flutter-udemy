import 'package:flutter/material.dart';
import 'package:learn/models/data_tasarlama.dart';

class HomeBottom extends StatelessWidget {
  final List<DataBottom> dataBottom = [
    DataBottom("Remzi", true,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
    DataBottom("Remzi", false,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
    DataBottom("Remzi", true,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
    DataBottom("Remzi", false,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
    DataBottom("Remzi", true,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
    DataBottom("Remzi", false,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
    DataBottom("Remzi", true,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
    DataBottom("Remzi", false,
        "Denemeasassmksdfkdlfkdfklkfkfkdkfkdskdkfklsfkkldskdsfsklfkskfkf"),
  ];

  HomeBottom(Key k) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataBottom.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          initiallyExpanded: dataBottom[index].expanded,
          title: Text(dataBottom[index].title),
          children: [
            Container(
              color: index % 2 == 0 ? Colors.green : Colors.brown,
              height: 300,
              width: double.infinity,
              child: Text(dataBottom[index].description),
            ),
          ],
        );
      },
    );
  }
}
