import 'package:dev_quiz/util/verifyTablet.dart';
import 'package:dev_quiz/widget/app_bar_widget.dart';
import 'package:dev_quiz/widget/level/level.dart';
import 'package:dev_quiz/widget/level/level_button_widget.dart';
import 'package:dev_quiz/widget/quiz_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LevelButtonWidget(Level.easy),
                LevelButtonWidget(Level.medium),
                LevelButtonWidget(Level.hard),
                LevelButtonWidget(Level.expert),
              ],
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                crossAxisCount: isTablet(context) ? 3 : 2,
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
