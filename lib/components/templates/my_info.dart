import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/page_header.dart';
import 'package:ha_neul/components/organisms/my_info_login.dart';
import 'package:ha_neul/components/organisms/my_info_service.dart';
import 'package:ha_neul/mixins/page_layout_mixin.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.horizontalPadding;
    final verticalPadding = context.verticalPadding;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.grey[50]!,
            ],
            stops: const [0.6, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 배경 디자인 요소
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: screenSize.width * 0.4,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[100]!.withAlpha(127),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      ),
                    ),
                  ),
                ),

                // 헤더
                Container(
                  transform: Matrix4.translationValues(0, -60, 0),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 30,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[200]!,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      PageHeader(
                        title: '첫장',
                        descriptionLines: const [
                          '스마트한 장례·추모 문화를',
                          '경험해보세요!',
                        ],
                        horizontalPadding: horizontalPadding,
                        verticalPadding: verticalPadding,
                      ),
                    ],
                  ),
                ),

                // 로그인/회원가입 버튼
                Container(
                  transform: Matrix4.translationValues(0, -30, 0),
                  child: MyInfoLogin(
                    horizontalPadding: horizontalPadding,
                  ),
                ),

                // 비회원 서비스 섹션 - 간격 줄임
                Container(
                  transform: Matrix4.translationValues(0, -10, 0),
                  child: MyInfoService(
                    horizontalPadding: horizontalPadding,
                  ),
                ),

                // 추가 장식 요소들
                SizedBox(
                  height: 120,
                  child: Stack(
                    children: [
                      Positioned(
                        right: horizontalPadding,
                        bottom: 40,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        left: horizontalPadding * 2,
                        bottom: 60,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
