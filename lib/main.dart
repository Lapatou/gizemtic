import 'package:flutter/material.dart';
import 'package:gizem_tic/singInPage.dart';

void main() {
  runApp(MainAppPage());
}

class MainAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gizem Ticaret',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SingInPage(),
    );
  }
}
