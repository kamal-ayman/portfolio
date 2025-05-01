import 'package:flutter/material.dart';

import 'home.dart';

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage(introduction: IntroductionWrapper());
  }
}
