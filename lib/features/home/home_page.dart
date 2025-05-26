import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../../core/core.dart';
import 'dart:js_interop';

import 'home.dart';

@JS('window.location.reload')
external void reloadPage();

class HomePage extends StatefulWidget {
  final Widget experience;
  final Widget introduction;
  final IndicatorController controller;

  const HomePage({
    super.key,
    required this.controller,
    required this.experience,
    required this.introduction,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WarpIndicator(
      controller: widget.controller,
      skyColor: context.secondaryColor,
      indicatorKey: Key(HomeKeys.homePageIndicator),
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        reloadPage();
      },
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: widget.introduction),
            SliverToBoxAdapter(child: widget.experience),
          ],
        ),
      ),
    );
  }
}
