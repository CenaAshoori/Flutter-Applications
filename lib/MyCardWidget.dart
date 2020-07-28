

import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Card(
          child: Column(

            children: <Widget>[
              Image.network(
                  "https://i.pinimg.com/564x/e8/0c/60/e80c604dd510368c51c01a3ff543fc42.jpg",
//              "https://i.pinimg.com/564x/65/8a/9f/658a9ff1f6c94b95faf217fddcbc0927.jpg",

//              "https://i.pinimg.com/originals/99/4d/da/994ddaa9e4a8745ccfc32ab120f7f914.gif",
              ),
              SizedBox(height: 20,),
              Text("Lyric Application u can see The weeknd Lyrics"),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Track Name",
                    labelText: "Track Name",
                    border: OutlineInputBorder(),

                  ),
                ),
              )
            ],
          ),
        ),

    );
  }
}
