import 'package:flutter/material.dart';
import 'package:portfolio/core/core.dart';
import 'package:url_launcher/url_launcher.dart';
import 'social_icons_widget.dart';
import 'widgets/widgets.dart';

class SocialIconsWrapper extends StatelessWidget {
  const SocialIconsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialIconsWidget(
      socialIcons: [
        SocialIconItem(
          icon: AppAssets.icons.linkedin,
          onTap: () {
            final url = Uri.parse(Env.linkedIn);
            launchUrl(url);
          },
        ),
        SocialIconItem(
          icon: AppAssets.icons.github,
          onTap: () {
            final url = Uri.parse(Env.github);
            launchUrl(url);
          },
        ),
      ],
    );
  }
}
