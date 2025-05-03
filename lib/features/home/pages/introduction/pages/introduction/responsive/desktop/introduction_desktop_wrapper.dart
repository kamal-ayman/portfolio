import 'package:flutter/cupertino.dart';

import '../../widgets/widgets.dart';
import 'desktop.dart';

class IntroductionDesktopWrapper extends StatelessWidget {
  const IntroductionDesktopWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionDesktopPage(
      titleText: const TitleTextWrapper(),
      summaryText: const SummaryTextWrapper(),
      socialIconsRow: const SocialIconsWrapper(),
      profileImageWidget: const ProfileImageWrapper(),
      backgroundHiText: const BackgroundHiTextWrapper(),
      backgroundShadow: const BackgroundShadowWrapper(),
      cvDownloadButton: const CvDownloadButtonWrapper(),
    );
  }
}
