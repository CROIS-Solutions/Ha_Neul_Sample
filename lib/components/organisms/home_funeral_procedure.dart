//organisms/home_funeral_procedure.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/molecules/home_subtitle.dart';
import 'package:ha_neul/components/molecules/funeral_procedure_step.dart';

class HomeFuneralProcedure extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;

  const HomeFuneralProcedure({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSubtitle(
          title: '장례 절차',
          horizontalPadding: horizontalPadding,
          verticalPadding: verticalPadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                FuneralProcedureStep(
                  question: '가장 먼저 무엇을 해야하나요?',
                  description: '장례식장 출동 신청',
                  iconType: 'ambulance',
                  horizontalPadding: horizontalPadding,
                  verticalPadding: verticalPadding,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: horizontalPadding * 0.4,
                  endIndent: horizontalPadding * 0.4,
                  color: Colors.grey[200],
                ),
                FuneralProcedureStep(
                  question: '소식은 어떻게 알리나요?',
                  description: '부고 문자 발송',
                  iconType: 'envelope',
                  horizontalPadding: horizontalPadding,
                  verticalPadding: verticalPadding,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: horizontalPadding * 0.4,
                  endIndent: horizontalPadding * 0.4,
                  color: Colors.grey[200],
                ),
                FuneralProcedureStep(
                  question: '행사는 어떻게 진행되나요?',
                  description: '장례식 진행',
                  iconType: 'flower',
                  horizontalPadding: horizontalPadding,
                  verticalPadding: verticalPadding,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: horizontalPadding * 0.4,
                  endIndent: horizontalPadding * 0.4,
                  color: Colors.grey[200],
                ),
                FuneralProcedureStep(
                  question: '장지는 어떻게 결정하나요?',
                  description: '장지 선택 및 안치',
                  iconType: 'tree',
                  horizontalPadding: horizontalPadding,
                  verticalPadding: verticalPadding,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: horizontalPadding * 0.4,
                  endIndent: horizontalPadding * 0.4,
                  color: Colors.grey[200],
                ),
                FuneralProcedureStep(
                  question: '장례 후에는 무엇을 해야하나요?',
                  description: '장례 후 할 일',
                  iconType: 'calendar',
                  horizontalPadding: horizontalPadding,
                  verticalPadding: verticalPadding,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
