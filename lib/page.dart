import 'package:flutter/material.dart';
class Page extends StatelessWidget {
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
        style: TextStyle(fontSize: 70.0, color: Colors.pinkAccent),
    )
    ]
    ),
    ),
        ),
    );
  }
}
