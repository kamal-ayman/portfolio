import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';
import 'package:vector_graphics/vector_graphics.dart';

class IconWidget extends StatefulWidget {
  final String icon;
  final double radius;

  const IconWidget({super.key, required this.icon, required this.radius});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  late final ValueNotifier<bool> isHovering;
  @override
  void initState() {
    isHovering = ValueNotifier<bool>(false);
    super.initState();
  }

  @override
  void dispose() {
    isHovering.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onExit: (event) => isHovering.value = false,
      onEnter: (event) => isHovering.value = true,
      child: Box(
        style: Style(
          $box.shape.circle(),
          $box.margin.all(widget.radius * .25),
          $box.animated.curve.easeInOut(),
          $box.animated.duration.milliseconds(350),
        ),
        child: ValueListenableBuilder<bool>(
          valueListenable: isHovering,
          builder: (context, value, child) {
            return VectorGraphic(
              colorFilter: ColorFilter.mode(
                value ? context.backgroundColor : context.primaryColor,
                BlendMode.srcIn,
              ),
              loader: AssetBytesLoader(widget.icon),
            );
          },
        ),
      ),
    );
  }
}
