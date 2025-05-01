import 'package:flutter/cupertino.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../../../../../../../../core/core.dart';
import '../../widgets/widgets.dart';
import 'desktop.dart';

class IntroductionDesktopWrapper extends StatelessWidget {
  const IntroductionDesktopWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionDesktopPage(
      introText: const IntroTextWrapper(),
      socialIconsRow: const SizedBox.shrink(),
      cvDownloadButton: PortfolioButton(
        width: null,
        text: t.intro.downloadCV,
        onTap: () {
          
        },
      ),
      backgroundHiText: const BackgroundHiTextWrapper(),
      backgroundShadow: const BackgroundShadowWrapper(),
      profileImageWidget: const ProfileImageWrapper(),
    );
  }
}
