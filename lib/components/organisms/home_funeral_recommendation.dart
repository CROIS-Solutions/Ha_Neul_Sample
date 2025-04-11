import 'package:flutter/material.dart';
import 'package:ha_neul/components/molecules/home_subtitle.dart';
import 'package:ha_neul/components/organisms/dialog.dart';
import 'package:ha_neul/components/molecules/funeral_recommendation_card.dart';
import 'package:ha_neul/components/molecules/funeral_recommendation_tab.dart';

class HomeFuneralRecommendation extends StatefulWidget {
  final double horizontalPadding;
  final double verticalPadding;

  const HomeFuneralRecommendation({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  State<HomeFuneralRecommendation> createState() =>
      _HomeFuneralRecommendationState();
}

class _HomeFuneralRecommendationState extends State<HomeFuneralRecommendation> {
  int _selectedIndex = 0;
  final List<String> _regions = ['전국', '서울', '경기', '강원', '충남', '경남'];

  // 카드 데이터
  final List<List<Map<String, String>>> _cardDataByRegion = [
    // 전국
    [
      {'location': '경기 군포시', 'name': '교원예음 장례식장'},
      {'location': '서울 영등포구', 'name': '고려대학교 서서울장례식장'},
    ],
    // 서울
    [
      {'location': '서울 영등포구', 'name': '고려대학교 서서울장례식장'}
    ],
    // 경기
    [
      {'location': '경기 군포시', 'name': '교원예음 장례식장'}
    ],
    // 강원
    [
      {'location': '강원 춘천시', 'name': '교원예음 강원장례식장'}
    ],
    // 충남
    [
      {'location': '충남 아산시', 'name': '교원예음 아산장례식장'}
    ],
    // 경남
    [
      {'location': '경남 김해시', 'name': '교원예음 김해장례식장'}
    ],
  ];

  @override
  Widget build(BuildContext context) {
    final currentCardData = _cardDataByRegion[_selectedIndex];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),

        // Subtitle
        HomeSubtitle(
          title: '추천 장례식장',
          horizontalPadding: widget.horizontalPadding,
          verticalPadding: widget.verticalPadding,
        ),

        // Region tabs
        SizedBox(
          height: 40,
          child: Padding(
            padding: EdgeInsets.only(left: widget.horizontalPadding),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(_regions.length, (index) {
                  return FuneralRecommendationTab(
                    location: _regions[index],
                    isSelected: index == _selectedIndex,
                    onTap: () => setState(() => _selectedIndex = index),
                  );
                }),
              ),
            ),
          ),
        ),

        // Recommendation Cards
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: widget.horizontalPadding,
            vertical: 16,
          ),
          child: Row(
            children: [
              // First Card
              Expanded(
                child: FuneralRecommendationCard(
                  location: currentCardData[0]['location']!,
                  name: currentCardData[0]['name']!,
                  subtitle: '24시간 출동가능',
                  onTap: () => DialogUtil.showDevelopmentDialog(
                    context,
                    title: '장례식장 상세정보',
                    message:
                        '${currentCardData[0]['name']} 상세정보 기능은 현재 개발 중입니다.',
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Second Card, Empty if None
              Expanded(
                child: currentCardData.length > 1
                    ? FuneralRecommendationCard(
                        location: currentCardData[1]['location']!,
                        name: currentCardData[1]['name']!,
                        subtitle: '24시간 출동가능',
                        onTap: () => DialogUtil.showDevelopmentDialog(
                          context,
                          title: '장례식장 상세정보',
                          message:
                              '${currentCardData[1]['name']} 상세정보 기능은 현재 개발 중입니다.',
                        ),
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
