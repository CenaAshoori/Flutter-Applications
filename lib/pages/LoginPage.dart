import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:email_validator/email_validator.dart';
import 'package:flutter_app_listview/constants/Constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _username_Controler = TextEditingController();

  var _password_Controler = TextEditingController();

  var _username_key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _username_key,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      print(value);

                      if (value.isEmpty)
                        return "Enter ur Username";
                      else {
                        if (EmailValidator.validate(value))

                          return null;
                        else
                          return "Wrong Email";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Enter Username", hintText: "Enter Email"),
                    controller: _username_Controler,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty)
                        return "Enter ur Password";
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Enter Password", hintText: "Password"),
                    controller: _password_Controler,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      if (_username_key.currentState.validate()) {
                        Constants.prefs.setBool("logedIn", true);
                        Constants.userInfo.setStringList('userInfo', [_username_Controler.text , _password_Controler.text]);
                        Navigator.pushReplacementNamed(context, '/');

                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
