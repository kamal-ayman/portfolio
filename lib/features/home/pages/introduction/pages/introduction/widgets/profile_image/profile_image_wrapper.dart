import 'package:flutter/material.dart';
import 'profile_image_widget.dart';

class ProfileImageWrapper extends StatefulWidget {
  const ProfileImageWrapper({super.key});

  @override
  State<ProfileImageWrapper> createState() => _ProfileImageWrapperState();
}

class _ProfileImageWrapperState extends State<ProfileImageWrapper>
    with SingleTickerProviderStateMixin {
  final lowerBound = -0.1;
  final upperBound = 0.0;
  late final ValueNotifier<bool> isHovering;
  late final AnimationController controller;

  @override
  void initState() {
    isHovering = ValueNotifier<bool>(false);
    controller = AnimationController(
      vsync: this,
      lowerBound: lowerBound,
      upperBound: upperBound,
      duration: const Duration(milliseconds: 350),
      reverseDuration: const Duration(milliseconds: 350),
    );
    super.initState();
  }

  @override
  void dispose() {
    isHovering.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isHovering,
      builder: (context, value, child) {
        return ProfileImageWidget(
          animation: controller,
          isHovering: isHovering.value,
          onEnter: (details) {
            isHovering.value = true;
            controller.forward();
          },
          onExit: (event) {
            isHovering.value = false;
            controller.reverse();
          },
          onTap: () {
            if (isHovering.value) {
              controller.reverse();
            } else {
              controller.forward();
            }
            isHovering.value = !isHovering.value;
          },
        );
      },
    );
  }
}
