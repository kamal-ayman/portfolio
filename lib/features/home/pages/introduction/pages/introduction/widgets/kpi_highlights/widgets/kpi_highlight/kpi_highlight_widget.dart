import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

class KpiHighlightWidget extends StatelessWidget {
  final String label;
  final num value;

  const KpiHighlightWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: context.isMobile ? Axis.vertical : Axis.horizontal,
      spacing: 5,
      children: [
        AnimatedFlipCounter(
          suffix: '+',
          value: value,
          duration: const Duration(seconds: 2),
          textStyle: context.h2TextStyle.copyWith(color: context.primaryColor),
        ),
        StyledText(
          label,
          style: Style(
            $text.fontSize(16),
            $text.fontFamily('Sora'),
            $text.color(context.primaryColor),
            $text.textAlign.justify(),
          ),
        ),
      ],
    );
  }
}
