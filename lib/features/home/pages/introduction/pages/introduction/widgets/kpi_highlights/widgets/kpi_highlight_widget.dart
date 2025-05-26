import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

class KpiHighlightWidget extends StatelessWidget {
  final String label;
  final String value;

  const KpiHighlightWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText(
            value,
            style: Style(
              $text.style.as(context.h2TextStyle),
              $text.color(context.primaryColor),
              $text.textAlign.justify(),
            ),
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      children: [
        StyledText(
          value,
          style: Style(
            $text.style.as(context.h2TextStyle),
            $text.color(context.primaryColor),
            $text.textAlign.justify(),
          ),
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
