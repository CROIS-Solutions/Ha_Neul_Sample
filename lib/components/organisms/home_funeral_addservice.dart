// organisms/home_funeral_addservice.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/molecules/home_subtitle.dart';
import 'package:ha_neul/components/molecules/funeral_addservice_card.dart';

class HomeFuneralAddService extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;

  const HomeFuneralAddService({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    // 타입 명시를 위한 클래스 정의
    final List<Map<String, dynamic>> serviceItems = [
      {
        'title': '장지 박람회',
        'subtitle': '전국 각지 묘공원',
        'emoji': '🌳',
        'color': Colors.green[50]!,
      },
      {
        'title': '이제움 장례용품',
        'subtitle': '맞춤형 조문용품',
        'emoji': '🌹',
        'color': Colors.red[50]!,
      },
      {
        'title': '수목장 묘지지점 명당자리',
        'subtitle': '좋은 자리 안내',
        'emoji': '🌳',
        'color': Colors.green[50]!,
      },
      {
        'title': '부고문 주문 제작',
        'subtitle': '맞춤형 모음집',
        'emoji': '📨',
        'color': Colors.grey[200]!,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),

        // Subtitle
        HomeSubtitle(
          title: '부가 서비스',
          horizontalPadding: horizontalPadding,
          verticalPadding: verticalPadding,
        ),

        // Service Cards
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 16,
          ),
          child: Column(
            children: [
              // First row
              Row(
                children: [
                  Expanded(
                    child: FuneralAddserviceCard(
                      title: serviceItems[0]['title'] as String,
                      subtitle: serviceItems[0]['subtitle'] as String,
                      emoji: serviceItems[0]['emoji'] as String,
                      backgroundColor: serviceItems[0]['color'] as Color,
                      wideScreen: verticalPadding == 30,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FuneralAddserviceCard(
                      title: serviceItems[1]['title'] as String,
                      subtitle: serviceItems[1]['subtitle'] as String,
                      emoji: serviceItems[1]['emoji'] as String,
                      backgroundColor: serviceItems[1]['color'] as Color,
                      wideScreen: verticalPadding == 30,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Second row
              Row(
                children: [
                  Expanded(
                    child: FuneralAddserviceCard(
                      title: serviceItems[2]['title'] as String,
                      subtitle: serviceItems[2]['subtitle'] as String,
                      emoji: serviceItems[2]['emoji'] as String,
                      backgroundColor: serviceItems[2]['color'] as Color,
                      wideScreen: verticalPadding == 30,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FuneralAddserviceCard(
                      title: serviceItems[3]['title'] as String,
                      subtitle: serviceItems[3]['subtitle'] as String,
                      emoji: serviceItems[3]['emoji'] as String,
                      backgroundColor: serviceItems[3]['color'] as Color,
                      wideScreen: verticalPadding == 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
