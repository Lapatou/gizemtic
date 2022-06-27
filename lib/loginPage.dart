import 'package:flutter/material.dart';

import 'customCompoment/bezierContainer.dart';
import 'customCompoment/customWidgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage(
      {this.title =
          "null geldi"}); //todo neden title in null gelemediğini kontrol et

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  title(),
                  SizedBox(height: 50),
                  emailPasswordWidget(),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {}, //todo giriş yap butonu işlev
                    child: submitButton(context),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                    child: Text('Şifrenizi mi unuttunuz?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: height * .055),
                  createAccountLabel(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
