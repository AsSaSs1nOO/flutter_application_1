import 'package:flutter/material.dart';

import 'mydrawer.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          actions: [
            IconButton(
              onPressed: ((){}),
              icon: Icon(Icons.alarm_add),
            ),
            IconButton(
              onPressed: (() {}),
              icon: Icon(Icons.saved_search_rounded),
            ),
          ],
        ),
        body: Text("Bonjour"),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: IconButton(
            onPressed: () {
              print("floatingActionButton clicked");
            },
            icon: Icon(Icons.cloud),
          ),
        ),
        drawer: Mydrawer(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
