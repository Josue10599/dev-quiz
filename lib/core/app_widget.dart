import 'package:dev_quiz/page/challenge_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dev Quiz",
      home: ChallengePage(),
    );
  }
}
