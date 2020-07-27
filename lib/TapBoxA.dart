import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Container(
      color: Colors.black87,
      height: 200,
//      padding: const EdgeInsets.all(12),
      child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.orange,
              ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple,
                  offset: Offset(5, 15),
                  blurRadius: 23,
                ),
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 35,
                ),
              ]),
          child: Center(child: Text("Hello Cena"))),
    );
  }
}
