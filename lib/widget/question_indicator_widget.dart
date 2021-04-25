import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/widget/progress_indicator_widget.dart';
import 'package:flutter/cupertino.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Questão 01',
                style: AppTextStyles.body,
              ),
              Text(
                'de 10',
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          ProgressIndicatorWidget(value: 0.1)
        ],
      ),
    );
  }
}
