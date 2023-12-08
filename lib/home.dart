import 'package:flutter/material.dart';
import 'package:flutter_application_1/mydrawer.dart';
import 'package:flutter_application_1/score.dart';


import 'question.dart';
import 'reponse.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _MyTestState();
}

class _MyTestState extends State<HomePage> {
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
  
  resetQuiz(){
    setState(() {
       index = 0 ;
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
            : Score(scorefinal,resetQuiz),
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
                Navigator.pop(context);
              },

              icon: Icon(Icons.arrow_back),
            ),
          ],
          // backgroundColor: Colors.purple,
        ),
        drawer: Mydrawer(),
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