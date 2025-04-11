import 'package:flutter/material.dart';

class MagazineHashtag extends StatelessWidget {
  final double horizontalPadding;
  final String selectedCategory;
  final Function(String) onCategorySelected;

  const MagazineHashtag({
    super.key,
    required this.horizontalPadding,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
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
                onPressed: () => onCategorySelected(category),
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
}
