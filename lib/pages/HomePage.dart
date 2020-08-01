import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_listview/MyCardWidget.dart';
import 'package:flutter_app_listview/constants/Constants.dart';
import 'package:http/http.dart';

import 'MyDrawer.dart';

class HomePage extends StatefulWidget {
//  static const routName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}
var url = "http://jsonplaceholder.typicode.com/photos";
var data;
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUrl();
  }

  @override
  var name_track = "Star Boy";
  TextEditingController textFieldControler = TextEditingController();
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: (){
                Constants.prefs.setBool("logedIn", false);
                Navigator.pushReplacementNamed(context , '/login');
              },
            )
          ],
          backgroundColor: Colors.black87,
          title: const Text('Flutter layout demo'),
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
//            child: MyCardWidget(name_track, textFieldControler),
            child: data != null ? ListView.builder(
              itemBuilder: (context , index){
                if (index % 20 == 0 || index == 0){
                  return MyCardWidget(name_track , textFieldControler);
                }
                else
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("id:${data[index]["id"]}"),
                  leading: Image.network(data[index]["thumbnailUrl"]),
                );
              },
            ) :
                Center(
                  child: CircularProgressIndicator(),
                )
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            Constants.prefs.setBool("logedIn", false);
            name_track = textFieldControler.text;
            textFieldControler.text = "";
//            callback();
            setState(() {
              print(name_track);
            });
          },
          child: Icon(Icons.send),

        ),
    );
  }

  getUrl() async{
    var res = await get(url);
    data = jsonDecode(res.body);
    setState(() {

    });
    print(data);

  }
}
