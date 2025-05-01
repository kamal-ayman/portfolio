import 'package:flutter/cupertino.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../../../../../../../../core/core.dart';
import '../../widgets/widgets.dart';
import 'desktop.dart';

class IntroductionDesktopWrapper extends StatelessWidget {
  const IntroductionDesktopWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionDesktopPage(
      title: Column(
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
          GradientText(
            t.intro.title,
            style: Style($text.style.as(context.h1TextStyle)),
            gradient: LinearGradient(
              colors: [context.headingPrimaryColor, context.secondaryColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ],
      ),
      description: const Text('I am a Flutter developer.'),
      socialIconsRow: const SizedBox.shrink(),
      cvDownloadButton: PortfolioButton(
        width: null,
        text: 'Hello, I am John Doe',
        onTap: () {},
      ),
      backgroundHiText: BackgroundHiTextWrapper(),
      backgroundShadow: const BackgroundShadowWrapper(),
      profileImageWidget: const SizedBox.shrink(),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final Style? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback:
          (bounds) => gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
      child: StyledText(text, style: style),
    );
  }
}
