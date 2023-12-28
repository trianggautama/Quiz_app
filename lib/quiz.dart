import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/quetions_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: activeScreen == 'start-screen'
              ? HomeScreen(switchScreen)
              : const QuizScreen(),
        ),
      )),
    );
  }
}
