import 'package:flutter/material.dart';

void main() {
  runApp(MyTest());
}

class MyTest extends StatefulWidget {
  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  var question = [
    {
      "Question": "what's your favorite color?",
      "reponses": [
        {"answer": "red", "score": 2},
        {"answer": "blue", "score": 3},
        {"answer": "green", "score": 0}
      ]
    },
    {
      "Question": "what's ur favorite car",
      "reponses": [
        {"answer": "Dodge", "score": 6},
        {"answer": "Mercedes", "score": 9},
        {"answer": "BMW", "score": 8}
      ]
    },
    {
      "Question": "what's ur favorite pet ?",
      "reponses": [
        {"answer": "cat", "score": 2},
        {"answer": "dog", "score": 3},
        {"answer": "Bird", "score": 0}
      ]
    },
  ];

  int index = 0;

  questionAnswer() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(question[index]["Question"].toString(),
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print(index);
                  questionAnswer();
                },
                child: Text("Reponse 1"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  questionAnswer();
                },
                child: Text("Reponse 2"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  questionAnswer();
                },
                child: Text("Reponse 3"),
              ),
            )
          ],
        ),
        appBar: AppBar(
          title: Text("Quiz"),
          actions: [
            IconButton(
              onPressed: () {
                print("Icon button cloud pressed");
              },
              icon: Icon(Icons.cloud),
            ),
            IconButton(
              onPressed: () {
                print("Icon button alarm pressed");
              },
              icon: Icon(Icons.alarm),
            ),
          ],
          // backgroundColor: Colors.purple,
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FloatingActionButton  pressed");
            print(question[0]["Question"]);
          },
          child: Icon(Icons.add),
        ),
      ),
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
    );
  }
}
