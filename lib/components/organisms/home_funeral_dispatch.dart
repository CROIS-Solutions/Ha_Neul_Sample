// organisms/home_funeral_dispatch.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/molecules/home_subtitle.dart';
import 'package:ha_neul/components/organisms/dialog.dart';

class HomeFuneralDispatch extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;

  const HomeFuneralDispatch({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // subtitle
        HomeSubtitle(
          title: '출동 현황',
          horizontalPadding: horizontalPadding,
          verticalPadding: verticalPadding,
        ),

        // content
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(verticalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '현재 출동 신청자님 내역이 없습니다.',
                    style: TextStyle(
                      fontSize: (horizontalPadding * 0.3).clamp(14.0, 16.0),
                    ),
                  ),
                  SizedBox(height: verticalPadding * 0.5),
                  Text(
                    '출동 서비스는 24시간 365일 신청가능하며, 최대 총 5건 고객을 모시기 위한 중구 지정을 미리 수락해두었습니다.',
                    style: TextStyle(
                      fontSize: (horizontalPadding * 0.3).clamp(14.0, 16.0),
                      color: Colors.grey[600],
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: verticalPadding * 0.8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        DialogUtil.showDevelopmentDialog(
                          context,
                          title: '장례식장 찾기',
                          message: '장례식장 찾기 기능은 현재 개발 중입니다.',
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          vertical: verticalPadding * 0.8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        '장례식장 찾아보기',
                        style: TextStyle(
                          fontSize: (horizontalPadding * 0.3).clamp(14.0, 16.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
