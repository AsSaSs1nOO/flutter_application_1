import 'package:flutter/material.dart';
import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/score.dart';

import 'reponse.dart';

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
        {"answer": "BMW", "score": 8},
        {"answer": "Tesla", "score": 7}
      ]
    },
    {
      "Question": "what's ur favorite pet ?",
      "reponses": [
        {"answer": "cat", "score": 2},
        // {"answer": "dog", "score": 3},
        {"answer": "Bird", "score": 0}
      ]
    },
  ];

  int index = 0;
  int scorefinal = 0;

  questionAnswer(int score) {
    setState(() {
      index++;
      scorefinal += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: index < question.length
            ? Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Question(question[index]["Question"].toString()),
                  SizedBox(
                    height: 20,
                  ),
                  ...(question[index]["reponses"] as List<Map<String, Object>>)
                      .map((e) => Reponse(questionAnswer,
                          e["answer"].toString(), e["score"] as int)),
                ],
              )
            : Score(scorefinal),
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
