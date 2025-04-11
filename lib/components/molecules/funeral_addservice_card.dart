//molecules/funerl_addservice_card.dart

import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/dialog.dart';
import 'package:ha_neul/components/atoms/circle_icon.dart';

class FuneralAddserviceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String emoji;
  final bool wideScreen;
  final Color backgroundColor;

  const FuneralAddserviceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.emoji,
    required this.backgroundColor,
    required this.wideScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          DialogUtil.showDevelopmentDialog(
            context,
            title: '서비스 준비 중',
            message: '$title 서비스는 현재 개발 중입니다.',
            buttonText: '확인',
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleIcon(
                // ✅ 기존 `_buildCircleIcon` 대체
                emoji: emoji,
                backgroundColor: backgroundColor,
                size: 48,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: wideScreen ? 15 : 14,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaler: const TextScaler.linear(1.0),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: wideScreen ? 13 : 12,
                  color: Colors.grey[600],
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaler: const TextScaler.linear(1.0),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '자세히 >',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.red[400],
                      fontWeight: FontWeight.bold,
                    ),
                    textScaler: const TextScaler.linear(1.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
