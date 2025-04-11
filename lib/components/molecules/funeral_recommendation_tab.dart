// molecules/location_tab.dart
import 'package:flutter/material.dart';

class FuneralRecommendationTab extends StatelessWidget {
  final String location;
  final bool isSelected;
  final VoidCallback onTap;

  const FuneralRecommendationTab({
    super.key,
    required this.location,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              location,
              style: TextStyle(
                color: isSelected ? Colors.red[400] : Colors.grey[700],
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              height: 3,
              width: 20,
              color: isSelected ? Colors.red[400] : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
