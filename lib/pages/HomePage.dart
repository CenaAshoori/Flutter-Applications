import 'package:flutter/material.dart';
import 'package:flutter_app_listview/MyCardWidget.dart';

import 'MyDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var name_track = "Star Boy";
  TextEditingController textFieldControler = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Flutter layout demo'),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: MyCardWidget(name_track, textFieldControler),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            name_track = textFieldControler.text;
            textFieldControler.text = "";
            setState(() {
              print(name_track);
            });
          },
          child: Icon(Icons.send),

        ),
      ),
    );
  }
}
