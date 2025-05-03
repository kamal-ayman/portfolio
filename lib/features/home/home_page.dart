import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Widget introduction;

  const HomePage({super.key, required this.introduction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(children: [introduction]),
      ),
    );
  }
}
