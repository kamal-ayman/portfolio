import 'package:flutter/material.dart';
import 'cv_download_button_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../../core/core.dart';

class CvDownloadButtonWrapper extends StatelessWidget {
  const CvDownloadButtonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return CvDownloadButtonWidget(
      onTap: () async {
        final url = Uri.parse(Env.cvUrl);
        final isUrlLaunchable = await canLaunchUrl(url);
        if (!isUrlLaunchable) throw Exception('Could not launch $url');
        await launchUrl(url);
      },
    );
  }
}
