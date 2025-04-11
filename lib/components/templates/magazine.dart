import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/page_header.dart';
import 'package:ha_neul/mixins/page_layout_mixin.dart';
import 'package:ha_neul/components/organisms/dialog.dart';

class MagazinePage extends StatefulWidget {
  const MagazinePage({super.key});

  @override
  State<MagazinePage> createState() => _MagazinePageState();
}

class _MagazinePageState extends State<MagazinePage> {
  final ScrollController _scrollController = ScrollController();
  List<Map<String, dynamic>> magazineItems = [];
  bool isLoading = false;
  int currentPage = 1;
  String selectedCategory = '# 전체';

  @override
  void initState() {
    super.initState();
    _loadInitialData();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMoreData();
    }
  }

  Future<void> _loadInitialData() async {
    setState(() {
      isLoading = true;
    });

    // API 호출 시뮬레이션
    await Future.delayed(const Duration(milliseconds: 500));

    setState(() {
      magazineItems = List.from(_generateMagazineItems(20));
      isLoading = false;
    });
  }

  Future<void> _loadMoreData() async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    // API 호출 시뮬레이션
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      magazineItems.addAll(_generateMagazineItems(10));
      currentPage++;
      isLoading = false;
    });
  }

  List<Map<String, dynamic>> _generateMagazineItems(int count) {
    final List<Map<String, dynamic>> items = [];

    final List<Map<String, dynamic>> templates = [
      {
        'title': '추천가입 이벤트',
        'subTitle': '2024.03 - 2024.12',
        'color': Colors.blue[100],
        'category': '# 이벤트',
        'isTrueFalse': false,
        'isPay': false,
        'question': false,
      },
      {
        'title': '장례 장학 QUIZ',
        'subTitle': 'Q. 미국 코스트코에서는 고인용 관을 판다.',
        'color': Colors.indigo[900],
        'category': '# 장례TOON',
        'isTrueFalse': true,
        'isPay': false,
        'question': false,
      },
      {
        'title': '우리가족 추모관 EVENT',
        'subTitle': '행사 참여 시 소정의 상품을 드립니다',
        'color': Colors.grey[100],
        'category': '# 이벤트',
        'isTrueFalse': false,
        'isPay': true,
        'question': false,
      },
      {
        'title': '장례 장학 QUIZ',
        'subTitle': '매장묘지? 화장묘지?',
        'color': Colors.green[100],
        'category': '# 장례TOON',
        'isTrueFalse': false,
        'isPay': false,
        'question': true,
      },
      {
        'title': '근조화환 보내면 뭐가 좋을까요?',
        'subTitle': '장례식장 추천 꽃 품목',
        'color': Colors.orange[50],
        'category': '# 시설소개',
        'isTrueFalse': false,
        'isPay': false,
        'question': false,
      },
      {
        'title': '장례식장 비용',
        'subTitle': '왜 이렇게 비쌀까?',
        'color': Colors.amber[50],
        'category': '# 기타',
        'isTrueFalse': false,
        'isPay': false,
        'question': false,
      },
      {
        'title': '장례식장에서 육개장이 나오는 이유가 뭘까요?',
        'subTitle': '문화적 배경 알아보기',
        'color': Colors.red[50],
        'category': '# 기타',
        'isTrueFalse': false,
        'isPay': false,
        'question': false,
      },
      {
        'title': '부의금, 얼마가 적당할까요?',
        'subTitle': '관계별 적정 부의금 가이드',
        'color': Colors.purple[50],
        'category': '# 장례TOON',
        'isTrueFalse': false,
        'isPay': false,
        'question': false,
      },
      {
        'title': '어떤 장례식장이 좋은 장례식장 일까요?',
        'subTitle': '장례식장 고르는 팁',
        'color': Colors.teal[50],
        'category': '# 시설소개',
        'isTrueFalse': false,
        'isPay': false,
        'question': false,
      },
      {
        'title': '제단장식이 뭔가요?',
        'subTitle': '장례식장 알아보기',
        'color': Colors.brown[50],
        'category': '# 시설소개',
        'isTrueFalse': false,
        'isPay': false,
        'question': false,
      },
    ];

    for (int i = 0; i < count; i++) {
      // 템플릿을 순환하면서 사용
      final template = templates[i % templates.length];
      items.add(Map<String, dynamic>.from(template));
    }

    return items;
  }

  void _selectCategory(String category) {
    setState(() {
      selectedCategory = category;
      // 카테고리 변경 시 데이터 초기화 및 재로드
      magazineItems = [];
      currentPage = 1;
      _loadInitialData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.horizontalPadding;
    final verticalPadding = context.verticalPadding;

    // 선택된 카테고리에 따라 아이템 필터링
    final displayItems = selectedCategory == '# 전체'
        ? magazineItems
        : magazineItems
            .where((item) => item['category'] == selectedCategory)
            .toList();

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _loadInitialData,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  PageHeader(
                    title: '매거진',
                    descriptionLines: const [
                      '매거진을 통해 다양한 장례 관련',
                      '소식과 정보를 접해보세요.',
                    ],
                    horizontalPadding: horizontalPadding,
                    verticalPadding: verticalPadding,
                  ),

                  // 카테고리 탭
                  _buildCategoryTabs(horizontalPadding),

                  const SizedBox(height: 20),
                ],
              ),
            ),

            // Megazine Items
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 600 ? 3 : 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == displayItems.length) {
                      return isLoading
                          ? _buildLoadingIndicator()
                          : const SizedBox();
                    }
                    return _buildMagazineItem(displayItems[index]);
                  },
                  childCount: displayItems.length + 1, // +1 로딩 인디케이터 포함
                ),
              ),
            ),

            // Bottom Layer
            const SliverToBoxAdapter(
              child: SizedBox(height: 40),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTabs(double horizontalPadding) {
    final categories = ['# 전체', '# 이벤트', '# 장례TOON', '# 시설소개', '# 기타'];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) {
            final isSelected = category == selectedCategory;
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ElevatedButton(
                onPressed: () => _selectCategory(category),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected ? Colors.red[100] : Colors.white,
                  foregroundColor:
                      isSelected ? Colors.red[400] : Colors.black87,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: isSelected ? Colors.red[100]! : Colors.grey[300]!,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: Text(category),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildMagazineItem(Map<String, dynamic> item) {
    // Null 안전성을 위해 불리언 값 확정
    final bool isPaymentFeature = item['isPay'] == true;
    final bool hasTrueFalseQuiz = item['isTrueFalse'] == true;
    final bool hasQuestion = item['question'] == true;

    return GestureDetector(
      onTap: () {
        DialogUtil.showDevelopmentDialog(
          context,
          title: '매거진 콘텐츠',
          message: '${item['title']} 콘텐츠는 현재 개발 중입니다.',
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: item['color'] ?? Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item['title'] != null) ...[
                    if (isPaymentFeature)
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            item['title'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[400],
                            ),
                          ),
                        ),
                      )
                    else
                      Text(
                        item['title'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                  if (item['subTitle'] != null &&
                      !hasTrueFalseQuiz &&
                      !hasQuestion)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        item['subTitle'],
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  if (hasTrueFalseQuiz)
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (item['subTitle'] != null)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Text(
                                item['subTitle'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (hasQuestion)
                    Expanded(
                      child: Center(
                        child: Text(
                          item['subTitle'] ?? '',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // 우측 상단 "하늘애" 텍스트
            const Positioned(
              top: 10,
              right: 20,
              child: Text(
                "하늘애",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
