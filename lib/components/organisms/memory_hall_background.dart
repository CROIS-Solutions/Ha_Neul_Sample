//organisms/memory_hall_background.dart
// import 'package:flutter/material.dart';

// class MemoryHallBackground extends StatelessWidget {
//   const MemoryHallBackground({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 180,
//       width: double.infinity,
//       color: Colors.grey[300],
//       child: const Icon(
//         Icons.image,
//         size: 40,
//         color: Colors.grey,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MemoryHallBackground extends StatelessWidget {
  const MemoryHallBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: Image.asset(
        'assets/images/memory_hall_background.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
