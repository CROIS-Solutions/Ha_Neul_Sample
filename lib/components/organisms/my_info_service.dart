import 'package:flutter/material.dart';
import 'package:ha_neul/components/molecules/service_history.dart';

class MyInfoService extends StatelessWidget {
  final double horizontalPadding;

  const MyInfoService({
    super.key,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(12),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
      padding: const EdgeInsets.all(24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '비회원 서비스',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
          SizedBox(height: 12),
          ServiceHistory(
            title: '상품 주문내역',
          ),
          ServiceHistory(
            title: '출동서비스 이용내역',
          ),
          ServiceHistory(
            title: '장지컨설팅 신청내역',
            showDivider: false,
          ),
        ],
      ),
    );
  }
}
