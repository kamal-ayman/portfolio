import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

import 'mobile.dart';

class IntroductionMobileWrapper extends StatelessWidget {
  const IntroductionMobileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionMobilePage(
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
