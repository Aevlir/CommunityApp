import 'package:flutter/material.dart';

class TestSubLayout extends StatelessWidget {
  const TestSubLayout({
    super.key,
    required this.child,
    this.isTopSafe,
    this.isBottomSafe,
    this.horizontalPadding,
    this.verticalPadding,
  });

  final Widget child;
  final bool? isTopSafe;
  final bool? isBottomSafe;
  final double? horizontalPadding;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 16,
        vertical: verticalPadding ?? 16,
      ),
      child: SafeArea(
        bottom: isBottomSafe ?? false,
        top: isTopSafe ?? false,
        child: child,
      ),
    );
  }
}
