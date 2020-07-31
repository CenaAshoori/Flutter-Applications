import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_listview/TapBoxA.dart';
import 'package:flutter_app_listview/pages/LoginPage.dart';

import 'FavoritWidget.dart';
import 'MyCardWidget.dart';
import 'pages/HomePage.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
//     return HomePage();
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',

//         home: LoginPage()
    );
  }
}
