import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/question_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.cyan,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Public information Test',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 60.0, color: Colors.pinkAccent),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen(0)));
                  },
                  child: Container(
                    width: 250.0,
                    height: 80.0,
                    child: Center(
                      child: Text(
                        'GOOOOO!!',
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
          )
      ),
    );
  }
}
