import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Remzi"),
            accountEmail: Text("remzi@gmail.com"),
          ),
          Divider(
            height: 12,
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.info_outlined),
                  title: Text("About"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_sharp),
                  title: Text("Account"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.bookmark_border_rounded),
                  title: Text("Bookmark"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.search_rounded),
                  title: Text("Search"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),

                ////////Inkwell kullanımı////////
                Divider(
                  height: 4,
                ),

                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.phone_android_rounded),
                    title: Text("Phone"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.settings_applications_sharp),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  splashColor: Colors.cyanAccent.shade100.withOpacity(0.2),
                  child: ListTile(
                    leading: Icon(Icons.verified_user_sharp),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),

                AboutListTile(
                  applicationName: "Flutter Learn",
                  applicationIcon: Icon(Icons.ac_unit_outlined),
                  applicationLegalese: "Flutter UI",
                  applicationVersion: "1",
                  aboutBoxChildren: [
                    Text("Remzi"),
                    Text("Remzi"),
                    Text("Remzi"),
                  ],
                  icon: Icon(Icons.info_outlined),
                  child: Text("About"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
