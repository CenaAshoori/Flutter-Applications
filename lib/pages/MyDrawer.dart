import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      elevation: 123,
      semanticLabel: "123",
      child: Container(
        color: Colors.black,
        child: ListView(

          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black87),
              otherAccountsPictures: <Widget>[
                Container(
                  child: IconButton(
                    icon: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/b8/4b/4d/b84b4d51b74c3c2f652b956f6b936dd5.jpg"),
                    ),
                    onPressed: () {
                      print("Icon Clicked");
                    },
                  ),
                ),
                CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/564x/2e/1f/b9/2e1fb93a69a72d50da1de9978be5b0c3.jpg")),
              ],
              accountName: Text("Cena Ashoori"),
              accountEmail: Text("Cena@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/b8/4b/4d/b84b4d51b74c3c2f652b956f6b936dd5.jpg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
