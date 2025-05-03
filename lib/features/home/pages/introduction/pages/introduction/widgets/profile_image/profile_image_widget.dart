import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/core/extensions/extensions.dart';

import 'package:portfolio_ui/portfolio_ui.dart';

class ProfileImageWidget extends StatelessWidget {
  final bool isHovering;
  final Function() onTap;
  final Animation<double> animation;
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
  static const _mobile = Variant('mobile');
  static const _tablet = Variant('tablet');
  static const _desktop = Variant('desktop');

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      key: Key('profile_image_animation'),
      animation: animation,
      builder: (context, child) {
        return Transform.rotate(angle: -animation.value, child: child);
      },
      child: Box(
        style: Style(
          $box.clipBehavior.antiAliasWithSaveLayer(),
          $box.borderRadius.all(context.largeRadius.x),
        ),
        child: MouseRegion(
          key: Key('profile_image'),
          onExit: onExit,
          onEnter: onEnter,
          cursor: SystemMouseCursors.click,
          child: PressableBox(
            onPress: onTap,
            style: Style(
              _mobile($box.width(150), $box.height(200)),
              _tablet($box.width(240), $box.height(290)),
              _desktop($box.width(300), $box.height(350)),
              $box.animated.curve.easeInOut(),
              $box.animated.duration.milliseconds(350),
              _hover($box.border.color(context.primary1Color)),
            ).applyVariants([
              if (isHovering) _hover,
              if (context.isMobile) _mobile,
              if (context.isTablet) _tablet,
              if (context.isDesktop) _desktop,
            ]),
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.circular(context.largeRadius.x),
              child: Image.asset(AppAssets.profilePic.path, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
