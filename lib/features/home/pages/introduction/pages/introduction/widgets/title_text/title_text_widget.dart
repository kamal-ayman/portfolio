import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import 'package:portfolio/core/core.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key});

  static const _mobile = Variant('mobile');
  static const _tablet = Variant('tablet');
  static const _desktop = Variant('desktop');

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        spacing: context.isMobile ? 10 : 20,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyledText(
            t.intro.subtitle,
            style: Style(
              $text.style.as(context.subTitleTextStyle),
              _mobile($text.fontSize(16)),
              _tablet($text.fontSize(30)),
              _desktop(),
              $text.fontWeight.w700(),
              $text.color(context.secondaryColor),
              $text.textAlign.justify(),
              $text.animated.curve.easeInOut(),
              $text.animated.duration.milliseconds(350),
            ).applyVariants([
              if (context.isMobile) _mobile,
              if (context.isTablet) _tablet,
              if (context.isDesktop) _desktop,
            ]),
          ),
          PortfolioGradientText(
            t.intro.title,
            style: Style(
              _mobile($text.style.as(context.h3TextStyle)),
              _tablet($text.style.as(context.h2TextStyle)),
              _desktop($text.style.as(context.h1TextStyle)),
              $text.fontWeight.w900(),
              $text.textAlign.justify(),
              $text.animated.curve.easeInOut(),
              $text.animated.duration.milliseconds(350),
            ).applyVariants([
              if (context.isMobile) _mobile,
              if (context.isTablet) _tablet,
              if (context.isDesktop) _desktop,
            ]),
            gradient: LinearGradient(
              colors: [context.headingPrimaryColor, context.secondaryColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ],
      ),
    );
  }
}
