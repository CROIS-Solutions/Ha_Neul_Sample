//molecules/hall_entry_card.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/dialog.dart';

class HallEntryCard extends StatelessWidget {
  final String title;
  final String buttonText;
  final Widget icon;
  final Color backgroundColor;

  const HallEntryCard({
    super.key,
    required this.title,
    required this.buttonText,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DialogUtil.showDevelopmentDialog(
          context,
          title: '추모관',
          message: '추모관 기능은 현재 개발 중입니다.',
        );
      },
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withAlpha(26), // withOpacity(0.1) 대신 withAlpha 사용
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            // 상단 아이콘 영역
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Center(
                child: icon,
              ),
            ),
            // 하단 텍스트 영역
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                      ),
                    ),
                    Text(
                      buttonText,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red[300],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
