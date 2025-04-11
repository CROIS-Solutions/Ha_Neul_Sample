import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final String? text; // 기존 'ProcedureCircleIcon'처럼 텍스트 아이콘 사용 가능
  final String? emoji; // 기존 'FuneralAddserviceCard'처럼 이모지 사용 가능
  final Color backgroundColor;
  final double size;
  final TextStyle? textStyle; // 텍스트 스타일 커스텀 가능

  const CircleIcon({
    super.key,
    this.text,
    this.emoji,
    required this.backgroundColor,
    required this.size,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: text != null
            ? Text(
                text!,
                style: textStyle ??
                    TextStyle(
                      fontSize: size * 0.5,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
              )
            : Text(
                emoji ?? '',
                style: TextStyle(
                  fontSize: size * 0.6,
                ),
              ),
      ),
    );
  }
}
