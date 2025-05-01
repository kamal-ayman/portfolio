import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio/core/core.dart';

import 'package:portfolio_ui/portfolio_ui.dart';

class ProfileImageWidget extends StatelessWidget {
  final Animation<double> animation;
  final bool isHovering;
  final Function() onTap;
  final Function(PointerExitEvent event) onExit;
  final Function(PointerEnterEvent details) onEnter;

  const ProfileImageWidget({
    super.key,
    required this.onTap,
    required this.onExit,
    required this.onEnter,
    required this.animation,
    required this.isHovering,
  });

  static const _hover = Variant('hover');

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.rotate(angle: -animation.value, child: child);
      },
      child: MouseRegion(
        key: Key('profile_image'),
        onExit: onExit,
        onEnter: onEnter,
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Box(
            style: Style(
              $box.width(300),
              $box.height(350),
              $box.animated.curve.easeInOut(),
              $box.animated.duration.milliseconds(350),
              _hover($box.border.color(context.primary1Color)),
              $box.clipBehavior.antiAliasWithSaveLayer(),
              $box.borderRadius.all(context.largeRadius.x),
            ).applyVariants([if (isHovering) _hover]),
            child: Image.asset(AppAssets.profilePic.path, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
