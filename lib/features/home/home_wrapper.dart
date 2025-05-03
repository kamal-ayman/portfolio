import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/core.dart';

import 'home.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  late final IndicatorController controller;

  @override
  void initState() {
    controller = IndicatorController(refreshEnabled: PlatformChecker.isWeb);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomePage(
      controller: controller,
      introduction: const IntroductionWrapper(),
      experience: const ExperienceWrapper(),
    );
  }
}
