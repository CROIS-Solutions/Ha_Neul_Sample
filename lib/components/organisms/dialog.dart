// organisms/dialog.dart
import 'package:flutter/material.dart';

class DialogUtil {
  static void showDevelopmentDialog(
    BuildContext context, {
    String title = '준비 중',
    String message = '이 기능은 현재 개발 중입니다.',
    String buttonText = '확인',
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(buttonText),
            ),
          ],
        );
      },
    );
  }
}
