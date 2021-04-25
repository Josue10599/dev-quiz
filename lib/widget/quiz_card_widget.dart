import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/widget/progress_indicator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
          ),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 20.0),
          Text(
            'Value',
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '3 de 10',
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 1,
                child: ProgressIndicatorWidget(
                  value: 0.1,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
