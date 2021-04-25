import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/widget/answer_widget.dart';
import 'package:flutter/cupertino.dart';

class QuizWidget extends StatelessWidget {
  final String question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 24.0,
          ),
          Text(
            question,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24.0,
          ),
          AnswerWidget(
            answer: 'answer',
          ),
          AnswerWidget(
            answer: 'answer',
            isSelected: true,
          ),
          AnswerWidget(
            answer: 'answer',
          ),
          AnswerWidget(
            answer: 'answer',
          ),
        ],
      ),
    );
  }
}
