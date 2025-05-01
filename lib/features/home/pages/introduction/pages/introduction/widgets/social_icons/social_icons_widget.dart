import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SocialIconsWidget extends StatelessWidget {
  final List<Widget> socialIcons;

  const SocialIconsWidget({super.key, required this.socialIcons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ListView.separated(
        itemCount: socialIcons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => socialIcons[index],
        separatorBuilder: (context, index) => const Gap(18),
      ),
    );
  }
}
