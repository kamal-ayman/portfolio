import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import 'package:portfolio/core/core.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

class SummaryTextWidget extends StatelessWidget {
  const SummaryTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: StyledText(
          t.intro.description,
          style: Style(
            $text.style.as(context.paragraphTextStyle),
            $text.fontSize(16),
            $text.textAlign.justify(),
          ),
        ),
      ),
    );
  }
}
