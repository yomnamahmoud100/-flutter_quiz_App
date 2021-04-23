import 'package:flutter/material.dart';

import 'package:quiz/quiz.dart';

class QuestionScreen extends StatefulWidget {
  final int index;

  QuestionScreen(this.index);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              myQuiz.questions[widget.index].question,
              style: TextStyle(fontSize: 30.0, color: Colors.pinkAccent),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 70.0,
              ),
              visible: isCorrect,
            ),
            Visibility(
              child: Icon(
                Icons.clear,
                color: Colors.red,
                size: 70.0,
              ),
              visible: isWrong,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.questions[widget.index].answer == true) {
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    } else {
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                    }
                  },
                  child: Container(
                    width: 140.0,
                    height: 80.0,
                    child: Center(
                      child: Text(
                        'True',
                        style:
                            TextStyle(fontSize: 30.0, color: Colors.pinkAccent),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.questions[widget.index].answer == false) {
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    } else {
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                    }
                  },
                  child: Container(
                    width: 140.0,
                    height: 80.0,
                    child: Center(
                      child: Text(
                        'False',
                        style:
                            TextStyle(fontSize: 30.0, color: Colors.pinkAccent),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(widget.index + 1),
                  ),
                );
              },
              child: Container(
                width: 140.0,
                height: 80.0,
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 30.0, color: Colors.pinkAccent),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
