import 'package:flutter/cupertino.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../../../../../../../../core/core.dart';

class CvDownloadButtonWidget extends StatelessWidget {
  final VoidCallback onTap;

  const CvDownloadButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return PortfolioButton(
      width: null,
      onTap: onTap,
      text: t.intro.downloadCV,
      type: PortfolioButtonType.outlined,
      suffixIcon: StyledIcon(CupertinoIcons.download_circle),
    );
  }
}
