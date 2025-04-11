import 'package:flutter/material.dart';

/// Mixin For PageLayout
mixin PageLayoutMixin<T extends StatefulWidget> on State<T> {
  /// Horizontal Padding
  double get horizontalPadding {
    final size = MediaQuery.of(context).size;
    return size.width > 600 ? size.width * 0.08 : size.width * 0.05;
  }

  /// Vertical Padding
  double get verticalPadding {
    final size = MediaQuery.of(context).size;
    return size.width > 600 ? 30.0 : 20.0;
  }
}

/// StatelessWidget Extension
extension PageLayoutExtension on BuildContext {
  /// 화면 가로 패딩 계산
  double get horizontalPadding {
    final size = MediaQuery.of(this).size;
    return size.width > 600 ? size.width * 0.08 : size.width * 0.05;
  }

  /// Vertical Padding
  double get verticalPadding {
    final size = MediaQuery.of(this).size;
    return size.width > 600 ? 30.0 : 20.0;
  }
}
