import 'package:flutter/material.dart';

class SocialIconsWidget extends StatelessWidget {
  final List<Widget> socialIcons;

  const SocialIconsWidget({super.key, required this.socialIcons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        growable: false,
        socialIcons.length,
        (index) => Padding(
          padding: EdgeInsets.only(
            right: index < socialIcons.length - 1 ? 18 : 0,
          ),
          child: socialIcons[index],
        ),
      ),
    );
  }
}
