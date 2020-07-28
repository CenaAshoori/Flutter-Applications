import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_listview/TapBoxA.dart';

import 'FavoritWidget.dart';
import 'MyCardWidget.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _myCardWidget = MyCardWidget(false);

  Widget titleSection = Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "Hi Cena , nice this is the first app that u made",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Text(
                  "sub Text :D",
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
//          Icon(
//            Icons.star,
//            color: Colors.cyanAccent[200],
//          ),
//          Text("41"),
          FavoritWidget()
        ],
      ));

  Column _buildButtonColumn(Color color, IconData icon, String lable) {
    return Column(
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            lable,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget textSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            softWrap: true));
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildButtonColumn(color, Icons.call, "CALL"),
            _buildButtonColumn(color, Icons.near_me, "ROUTE"),
            _buildButtonColumn(color, Icons.share, "SHARE"),
          ]),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Flutter layout demo'),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: _myCardWidget,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),

        ),
      ),
    );
  }

  MyDrawer() => Drawer(
        elevation: 123,
        semanticLabel: "123",
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
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
      );

}
