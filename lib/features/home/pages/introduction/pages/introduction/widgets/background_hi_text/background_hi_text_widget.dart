import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../../../../../../../../core/core.dart';

class BackgroundHiTextWidget extends StatelessWidget {
  final AnimationController animation;

  const BackgroundHiTextWidget({super.key, required this.animation});

  @override
  Widget build(BuildContext context) {
    final paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1
          ..color = context.primaryColor
          ..blendMode = BlendMode.srcOver;
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Transform.scale(scale: animation.value, child: child);
        },
        child: StyledText(
          t.intro.hi,
          style: Style(
            $text.style.as(context.h1TextStyle.copyWith(foreground: paint)),
            $text.style.fontSize(200),
            $text.style.fontWeight(FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
