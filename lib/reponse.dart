import 'package:flutter/material.dart';

class Reponse extends StatelessWidget {
  Reponse(this.reponsefunc, this.reponse, this.score);
  Function reponsefunc;
  String reponse;
  int score;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          reponsefunc(score);
        },
        child: Text(reponse),
      ),
    );
  }
}
