import 'package:flutter/widgets.dart';
import 'package:mix/mix.dart';

class PortfolioGradientText extends StatelessWidget {
  final String text;
  final Style? style;
  final Gradient gradient;

  const PortfolioGradientText(
    this.text, {
    super.key,
    this.style,
    required this.gradient,
  });

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
