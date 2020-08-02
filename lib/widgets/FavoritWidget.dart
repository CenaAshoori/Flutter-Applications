import 'package:flutter/material.dart';

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