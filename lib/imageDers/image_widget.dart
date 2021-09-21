import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    child: Image.asset(
                      "assets/images/remzi.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    child: Image.network(
                      "https://cdn.dsmcdn.com/mnresize/1200/1800/ty122/product/media/images/20210528/11/93045759/179735303/3/3_org_zoom.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade700,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.red.shade400,
                        child: Text("R"),
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://cdn.dsmcdn.com/mnresize/1200/1800/ty122/product/media/images/20210528/11/93045759/179735303/3/3_org_zoom.jpg"),
                        foregroundColor: Colors.red.shade400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: "assets/images/manken-1.png",
                image:
                    "https://cdn.dsmcdn.com/mnresize/1200/1800/ty122/product/media/images/20210528/11/93045759/179735303/3/3_org_zoom.jpg"),
          )
        ],
      ),
    );
  }
}
