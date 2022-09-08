import 'dart:ui';

import 'package:flutter/material.dart';

/// ボトムシートの土台となるウィジェット
class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.body,
  });

  final Widget body;

  static const cornerRadius = 20.0;
  static Color maskColor = Colors.black45.withOpacity(0.5);
  static ImageFilter filter = ImageFilter.blur(sigmaX: 20, sigmaY: 20);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(cornerRadius),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 5.0),
        decoration: BoxDecoration(
          color: maskColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(cornerRadius),
          ),
        ),
        child: Stack(
          children: [
            const Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: _DragIndicator(),
              ),
            ),
            body,
          ],
        ),
      ),
    );
  }
}

/// シート上部に設置したドラッグインジケーター
class _DragIndicator extends StatelessWidget {
  const _DragIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 4,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
