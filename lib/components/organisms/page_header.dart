//organisms/page_header.dart
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final List<String> descriptionLines;
  final double horizontalPadding;
  final double verticalPadding;
  final bool useSafeArea;

  const PageHeader({
    super.key,
    required this.title,
    required this.descriptionLines,
    required this.horizontalPadding,
    required this.verticalPadding,
    this.useSafeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    final header = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            title,
            style: TextStyle(
              fontSize: horizontalPadding.clamp(24.0, 36.0),
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          // Description lines
          ...descriptionLines.map((line) => Text(
                line,
                style: TextStyle(
                  fontSize: (horizontalPadding * 0.6).clamp(14.0, 18.0),
                  color: Colors.grey[600],
                  height: 1.3,
                ),
              )),
        ],
      ),
    );

    if (useSafeArea) {
      return SafeArea(child: header);
    }

    return header;
  }
}
