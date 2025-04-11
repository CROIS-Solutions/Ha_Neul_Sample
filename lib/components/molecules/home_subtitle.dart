// molecules/home_subtitle.dart
import 'package:flutter/material.dart';

class HomeSubtitle extends StatelessWidget {
  final String title;
  final double horizontalPadding;
  final double verticalPadding;

  const HomeSubtitle({
    super.key,
    required this.title,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding * 0.3,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: (horizontalPadding * 0.45).clamp(22.0, 24.0),
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
      ),
    );
  }
}
