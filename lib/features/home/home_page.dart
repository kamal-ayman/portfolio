import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../../core/core.dart';
import 'dart:js_interop';

@JS('window.location.reload')
external void reloadPage();

class HomePage extends StatelessWidget {
  final Widget introduction;
  final IndicatorController controller;

  const HomePage({
    super.key,
    required this.controller,
    required this.introduction,
  });

  @override
  Widget build(BuildContext context) {
    return WarpIndicator(
      indicatorKey: Key('home_page_indicator'),
      skyColor: context.secondaryColor,
      controller: controller,
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        reloadPage();
      },
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: introduction),
          ],
        ),
      ),
    );
  }
}
