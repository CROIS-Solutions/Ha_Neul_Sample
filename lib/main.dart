import 'package:flutter/material.dart';
import 'components/templates/root_layout.dart';

void main() {
  runApp(const HanNeulApp());
}

class HanNeulApp extends StatelessWidget {
  const HanNeulApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '하늘애',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(), // 메인 페이지로 이동
    );
  }
}
