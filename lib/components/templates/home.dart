//templates/home.dart

import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/home_company_info.dart';
import 'package:ha_neul/components/organisms/home_funeral_addservice.dart';
import 'package:ha_neul/components/organisms/home_funeral_dispatch.dart';
import 'package:ha_neul/components/organisms/home_funeral_procedure.dart';
import 'package:ha_neul/components/organisms/home_funeral_recommendation.dart';
import 'package:ha_neul/components/organisms/page_header.dart';
import 'package:ha_neul/mixins/page_layout_mixin.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.horizontalPadding;
    final verticalPadding = context.verticalPadding;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageHeader(
            title: '하늘애',
            descriptionLines: const [
              '장례식장, 출동 연결, 장지 컨설팅 등',
              '쉽고 편리하게 무료로 이용해보세요',
            ],
            horizontalPadding: horizontalPadding,
            verticalPadding: verticalPadding,
          ),

          // Funeral Procedure
          HomeFuneralProcedure(
            horizontalPadding: horizontalPadding,
            verticalPadding: verticalPadding,
          ),
          const SizedBox(height: 30),

          // Funeral Dispatch
          HomeFuneralDispatch(
            horizontalPadding: horizontalPadding,
            verticalPadding: verticalPadding,
          ),
          const SizedBox(height: 30),

          // Funeral Recommendation
          HomeFuneralRecommendation(
            horizontalPadding: horizontalPadding,
            verticalPadding: verticalPadding,
          ),
          const SizedBox(height: 30),

          // AddService
          HomeFuneralAddService(
            horizontalPadding: horizontalPadding,
            verticalPadding: verticalPadding,
          ),
          const SizedBox(height: 30),

          // Company Info
          HomeCompanyInfo(
            horizontalPadding: horizontalPadding,
          ),
        ],
      ),
    );
  }
}
