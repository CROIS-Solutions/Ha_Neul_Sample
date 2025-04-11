//templates/memory_hall.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/organisms/memory_hall_background.dart';
import 'package:ha_neul/components/organisms/memory_hall_entry.dart';
import 'package:ha_neul/components/organisms/memory_hall_letterbox.dart';
import 'package:ha_neul/components/organisms/page_header.dart';
import 'package:ha_neul/mixins/page_layout_mixin.dart';

class MemoryHallPage extends StatelessWidget {
  const MemoryHallPage({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.horizontalPadding;
    final verticalPadding = context.verticalPadding;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Background Image
          const MemoryHallBackground(),

          // Header
          PageHeader(
            title: '추모관',
            descriptionLines: const [
              '청정은 아름다운 추모 문화 확산을 위해',
              '노력하겠습니다.',
            ],
            horizontalPadding: horizontalPadding,
            verticalPadding: verticalPadding,
            useSafeArea: false,
          ),
          const SizedBox(height: 10),

          // Memory Hall Cards
          MemoryHallEntry(
            horizontalPadding: horizontalPadding,
          ),

          const SizedBox(height: 40),

          // LetterBox
          MemoryHallLetterbox(
            horizontalPadding: horizontalPadding,
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
