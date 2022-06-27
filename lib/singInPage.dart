import 'package:flutter/material.dart';

import 'customComponents/bezierContainer.dart';
import 'customComponents/customWidgets.dart';

class SingInPage extends StatefulWidget {
  SingInPage(
      {this.title =
          "null geldi"}); //todo neden title in null gelemediğini kontrol et

  final String title;

  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
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
                  //todo singIn Form will be build here
                  submitButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
