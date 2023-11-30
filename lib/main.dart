import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';


import 'login_page.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //home: LoginPage (),
      initialRoute: '/',
      routes: {
        '/' :(context) => LoginPage(),
        '/homepage':(context) => HomePage(),
      },
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
    );
  }
}