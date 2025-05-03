import 'package:flutter/material.dart';
import 'background_hi_text_widget.dart';

class BackgroundHiTextWrapper extends StatefulWidget {
  const BackgroundHiTextWrapper({super.key});

  @override
  State<BackgroundHiTextWrapper> createState() =>
      _BackgroundHiTextWrapperState();
}

class _BackgroundHiTextWrapperState extends State<BackgroundHiTextWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      lowerBound: .9,
      duration: const Duration(seconds: 2),
    );
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundHiTextWidget(animation: controller);
  }
}
