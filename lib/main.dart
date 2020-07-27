import 'package:flutter/material.dart';
import 'package:flutter_app_listview/TapBoxA.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

  // final WordPair = WordPair.random();
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
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(children: <Widget>[
          Image.asset(
            "images/1.jpg",
            width: 600,
            height: 400,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              titleSection,
              titleSection,
              buttonSection,
              textSection,
              TapBoxA(),
            ],
          ),
        ]),
      ),
    );
  }
}

class FavoritWidget extends StatefulWidget {
  FavoritWidget({Key key}) : super(key: key);

  @override
  _FavoritWidgetState createState() => _FavoritWidgetState();
}

class _FavoritWidgetState extends State<FavoritWidget> {
  bool _isFavorit = true;
  int _likeCount = 41;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
            color: Colors.red[400],
            icon: (_isFavorit ? Icon(Icons.star) : Icon(Icons.star_border)),
            onPressed: _toggleFavorite,
          ),
          SizedBox(
              width: 22,
              child: Container(
                child: Text(_likeCount.toString()),
              ))
        ],
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorit)
        _likeCount--;
      else
        _likeCount++;
      _isFavorit = !(_isFavorit);
    });
  }
}
