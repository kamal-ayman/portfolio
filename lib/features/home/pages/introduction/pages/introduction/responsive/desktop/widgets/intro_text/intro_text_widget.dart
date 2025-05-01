import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import 'package:portfolio/core/core.dart';

class IntroTextWidget extends StatelessWidget {
  const IntroTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText(
          t.intro.subtitle,
          style: Style(
            $text.style.as(context.subTitleTextStyle),
            $text.color(context.secondaryColor),
          ),
        ),
        PortfolioGradientText(
          t.intro.title,
          style: Style($text.style.as(context.h1TextStyle)),
          gradient: LinearGradient(
            colors: [context.headingPrimaryColor, context.secondaryColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: StyledText(
            t.intro.description,
            style: Style($text.fontSize(20)),
          ),
        ),
      ],
    );
  }
}
