import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    isHovering = ValueNotifier(false);
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
      onEnter: (event) {
        isHovering.value = true;
        setState(() {});
      },
      onExit: (event) {
        isHovering.value = false;
        setState(() {});
      },
      child: Padding(
        padding: EdgeInsets.all(widget.radius * 0.25),
        child: VectorGraphic(
          colorFilter: ColorFilter.mode(
            isHovering.value ? context.backgroundColor : context.primaryColor,
            BlendMode.srcIn,
          ),

          loader: AssetBytesLoader(widget.icon),
        ),
      ),
    );
  }
}
