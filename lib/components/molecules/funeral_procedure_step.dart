//molecules/funeral_procedure_step.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/atoms/circle_icon.dart';
import 'package:ha_neul/components/organisms/dialog.dart';

class FuneralProcedureStep extends StatelessWidget {
  final String question;
  final String description;
  final String iconType;
  final double horizontalPadding;
  final double verticalPadding;

  const FuneralProcedureStep({
    super.key,
    required this.question,
    required this.description,
    required this.iconType,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    final iconSize = (horizontalPadding * 0.85).clamp(44.0, 48.0);
    final questionTextStyle = TextStyle(
      fontSize: (horizontalPadding * 0.3).clamp(14.0, 16.0),
      color: Colors.red[400],
      height: 1.4,
    );
    final descriptionTextStyle = TextStyle(
      fontSize: (horizontalPadding * 0.35).clamp(16.0, 18.0),
      fontWeight: FontWeight.w600,
      height: 1.2,
    );

    Color backgroundColor;
    switch (iconType) {
      case 'ambulance':
        backgroundColor = Colors.green[50]!;
        break;
      case 'envelope':
        backgroundColor = Colors.grey[200]!;
        break;
      case 'flower':
        backgroundColor = Colors.red[50]!;
        break;
      case 'tree':
        backgroundColor = Colors.green[50]!;
        break;
      case 'calendar':
        backgroundColor = Colors.red[50]!;
        break;
      default:
        backgroundColor = Colors.grey[200]!;
    }

    return InkWell(
      onTap: () {
        DialogUtil.showDevelopmentDialog(
          context,
          title: '기능 준비 중',
          message: '$description 기능은 현재 개발 중입니다.',
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding * 0.8,
          horizontal: horizontalPadding * 0.4,
        ),
        child: Row(
          children: [
            CircleIcon(
              // ✅ 기존 `ProcedureCircleIcon` 대체
              text: '?',
              backgroundColor: backgroundColor,
              size: iconSize,
            ),
            SizedBox(width: horizontalPadding * 0.3),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(question, style: questionTextStyle),
                  Text(description, style: descriptionTextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
