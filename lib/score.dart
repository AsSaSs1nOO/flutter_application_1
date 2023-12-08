import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  Score(this.score, this.toResponseQuizFunction );
  int score;
  VoidCallback toResponseQuizFunction ;

  @override
  Widget build(BuildContext context) {
    // centre , gras , taille 28 , vert
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
           
            Padding(padding: EdgeInsets.all(30)),
            Text(
              "Votre Score Est : " + score.toString(),
              style: TextStyle(
                color: Color.fromARGB(255, 76, 97, 175),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              onPressed: toResponseQuizFunction ,
              child: Text('reset',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}