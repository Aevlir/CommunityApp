import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';

class TestLayout extends StatelessWidget {
  const TestLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: TestColors.backgroundColor, body: child);
  }
}
