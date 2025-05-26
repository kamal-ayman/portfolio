import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../../../../../../../../core/core.dart';

class BackgroundHiTextWidget extends StatelessWidget {
  final AnimationController animation;

  const BackgroundHiTextWidget({super.key, required this.animation});

  static const _mobile = Variant('mobile');
  static const _tablet = Variant('tablet');
  static const _desktop = Variant('desktop');

  @override
  Widget build(BuildContext context) {
    final paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = context.primaryColor.withValues(alpha: .2)
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
            _mobile($text.style.fontSize(200)),
            _tablet($text.style.fontSize(300)),
            _desktop($text.style.fontSize(400)),
            $text.textAlign.justify(),
            $text.fontFamily('Bold'),
            $text.fontWeight.w500(),
            $text.animated.curve.easeInOut(),
            $text.animated.duration.milliseconds(350),
          ).applyVariants([
            if (context.isMobile) _mobile,
            if (context.isTablet) _tablet,
            if (context.isDesktop) _desktop,
          ]),
        ),
      ),
    );
  }
}
