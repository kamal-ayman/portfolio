import 'package:flutter/cupertino.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../../core/core.dart';
import '../../widgets/widgets.dart';
import 'desktop.dart';

class IntroductionDesktopWrapper extends StatelessWidget {
  const IntroductionDesktopWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionDesktopPage(
      introText: const IntroTextWrapper(),
      socialIconsRow: const SocialIconsWrapper(),
      backgroundHiText: const BackgroundHiTextWrapper(),
      backgroundShadow: const BackgroundShadowWrapper(),
      profileImageWidget: const ProfileImageWrapper(),
      cvDownloadButton: PortfolioButton(
        width: null,
        text: t.intro.downloadCV,
        type: PortfolioButtonType.outlined,
        suffixIcon: StyledIcon(CupertinoIcons.download_circle),
        onTap: () async {
          final url = Uri.parse(Env.cvUrl);
          final isUrlLaunchable = await canLaunchUrl(url);
          if (!isUrlLaunchable) return;
          launchUrl(
            url,
            mode: LaunchMode.externalApplication,
          );
        },
      ),
    );
  }
}
