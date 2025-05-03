import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/extensions.dart';

class IntroductionPage extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const IntroductionPage({
    super.key,
    required this.mobile,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) return mobile;
    return desktop;
  }
}
