//organisms/home_company_info.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/dialog.dart';

class HomeCompanyInfo extends StatelessWidget {
  final double horizontalPadding;

  const HomeCompanyInfo({
    super.key,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '회사정보',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '(주)하늘애컴퍼니',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '대표자: 홍길동',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '사업자등록번호: xxx-xx-xxxxx',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '주소: 서울시 강남구 테헤란로 xxxx',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '이메일: apple@developer.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '전화: 010-xxx-xxxx',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  DialogUtil.showDevelopmentDialog(
                    context,
                    title: '약관 준비 중',
                    message: '서비스 이용약관은 현재 준비 중입니다.',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey[800],
                  elevation: 0,
                  side: BorderSide(color: Colors.grey[300]!),
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: const Text('서비스 이용약관'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  DialogUtil.showDevelopmentDialog(
                    context,
                    title: '정책 준비 중',
                    message: '개인정보 처리방침은 현재 준비 중입니다.',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey[800],
                  elevation: 0,
                  side: BorderSide(color: Colors.grey[300]!),
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: const Text('개인정보 처리방침'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  DialogUtil.showDevelopmentDialog(
                    context,
                    title: '동의서 준비 중',
                    message: '민감정보 이용동의서는 현재 준비 중입니다.',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey[800],
                  elevation: 0,
                  side: BorderSide(color: Colors.grey[300]!),
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: const Text('민감정보 이용동의'),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
