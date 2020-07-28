import 'package:flutter/material.dart';

class MyCardWidget extends StatefulWidget {
  var flg ;
  MyCardWidget(this.flg);
  @override
  _MyCardWidgetState createState() {
    print("yeah that's working");
    return _MyCardWidgetState();
  }
}

class _MyCardWidgetState extends State<MyCardWidget> {
  var _trackName = "";
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
//    print(controller.text);
    print("Init State");
    print(controller.text);
    _trackName =  "Star";
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              "https://i.pinimg.com/564x/e8/0c/60/e80c604dd510368c51c01a3ff543fc42.jpg",
//              "https://i.pinimg.com/564x/65/8a/9f/658a9ff1f6c94b95faf217fddcbc0927.jpg",

//              "https://i.pinimg.com/originals/99/4d/da/994ddaa9e4a8745ccfc32ab120f7f914.gif",
            ),
            SizedBox(
              height: 20,
            ),
            Text(_trackName),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
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
