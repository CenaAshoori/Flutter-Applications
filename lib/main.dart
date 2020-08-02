import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/+Flutter%20Project/First%20Application/flutter_app_listview/lib/widgets/TapBoxA.dart';
import 'package:flutter_app_listview/constants/Constants.dart';
import 'package:flutter_app_listview/pages/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/FavoritWidget.dart';
import 'widgets/MyCardWidget.dart';
import 'pages/HomePage.dart';
//import 'package:english_words/english_words.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  Constants.userInfo = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String choosePage(bool flg){
    if (flg==true){
      return '/';
    }
    else{
      Navigator.popUntil(context, (route) => false);
      Navigator.pushReplacementNamed(context, '\login');
      return '\login';
    }
  }
  @override
  Widget build(BuildContext context) {
//     return HomePage();
    return MaterialApp(
      initialRoute: Constants.prefs.getBool("logedIn") == true ? '/' : '/login' ,
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
//      home: Constants.prefs.getBool("logedIn") == true ? HomePage() : LoginPage(),

//         home: LoginPage()
    );
  }
}
