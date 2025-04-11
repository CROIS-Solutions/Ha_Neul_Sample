//organisms/memory_hall_entry.dart
import 'package:flutter/material.dart';
import 'package:ha_neul/components/molecules/hall_entry_card.dart';

class MemoryHallEntry extends StatelessWidget {
  final double horizontalPadding;

  const MemoryHallEntry({
    super.key,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        children: [
          // First Card
          Expanded(
            child: HallEntryCard(
              title: '추모하고 싶을 때\n기억광장',
              buttonText: '입장하기 >',
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 36,
              ),
              backgroundColor: Colors.red[400]!,
            ),
          ),
          const SizedBox(width: 16),
          // Second Card
          Expanded(
            child: HallEntryCard(
              title: '함께 마음을 모으는\n특별추모관',
              buttonText: '입장하기 >',
              icon: const Icon(
                Icons.handshake_outlined,
                color: Colors.white,
                size: 36,
              ),
              backgroundColor: Colors.grey[400]!,
            ),
          ),
        ],
      ),
    );
  }
}
