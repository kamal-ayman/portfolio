import 'package:mix/mix.dart';
import 'package:flutter/material.dart';

import 'package:portfolio_ui/portfolio_ui.dart';

import 'widgets.dart';

class SocialIconItem extends StatelessWidget {
  final String icon;
  final double radius;
  final VoidCallback onTap;

  const SocialIconItem({
    super.key,
    this.radius = 32,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PressableBox(
      style: Style(
        $box.height(radius),
        $box.width(radius),
        $box.border.all.color(context.primaryColor),
        $box.shape.circle(),
      ),
      onPress: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Box(
            style: Style(
              $box.width(0),
              $box.height(0),
              $box.border.color(context.primaryColor),
              $box.animated.duration.milliseconds(350),
              $box.shape.circle(),
              $on.hover(
                $box.height(radius),
                $box.width(radius),
                $box.color(context.primaryColor),
              ),
              $box.animated.curve.easeInOut(),
            ),
          ),
          IconWidget(icon: icon, radius: radius),
        ],
      ),
    );
  }
}
