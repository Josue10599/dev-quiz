import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'level.dart';
import 'level_atributes.dart';

class LevelButtonWidget extends StatelessWidget {
  final Level level;
  final Map<Level, LevelAttributes> _config = {
    Level.easy: LevelAttributes(
      buttonColor: AppColors.levelButtonFacil,
      borderColor: AppColors.levelButtonBorderFacil,
      textColor: AppColors.levelButtonTextFacil,
      textLabel: "Fácil",
    ),
    Level.medium: LevelAttributes(
      buttonColor: AppColors.levelButtonMedio,
      borderColor: AppColors.levelButtonBorderMedio,
      textColor: AppColors.levelButtonTextMedio,
      textLabel: "Médio",
    ),
    Level.hard: LevelAttributes(
      buttonColor: AppColors.levelButtonDificil,
      borderColor: AppColors.levelButtonBorderDificil,
      textColor: AppColors.levelButtonTextDificil,
      textLabel: "Díficil",
    ),
    Level.expert: LevelAttributes(
      buttonColor: AppColors.levelButtonPerito,
      borderColor: AppColors.levelButtonBorderPerito,
      textColor: AppColors.levelButtonTextPerito,
      textLabel: "Períto",
    ),
  };

  LevelButtonWidget(this.level, {Key? key}) : super(key: key);

  Color get buttonColor => _config[this.level]!.buttonColor;

  Color get textColor => _config[this.level]!.textColor;

  Color get borderColor => _config[this.level]!.borderColor;

  String get textLabel => _config[this.level]!.textLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.0),
          color: buttonColor,
          border: Border.fromBorderSide(
            BorderSide(
              color: borderColor,
            ),
          )),
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 6.0),
      child: Text(
        textLabel,
        style: GoogleFonts.notoSans(
          color: textColor,
          textStyle: AppTextStyles.body,
        ),
      ),
    );
  }
}
