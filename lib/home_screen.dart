import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.3,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Learn Flutter the Fun Way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
