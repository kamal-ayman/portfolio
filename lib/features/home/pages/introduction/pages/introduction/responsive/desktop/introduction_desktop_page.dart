import 'package:flutter/material.dart';

class IntroductionDesktopPage extends StatelessWidget {
  final Widget title;
  final Widget description;
  final Widget socialIconsRow;
  final Widget cvDownloadButton;
  final Widget backgroundHiText;
  final Widget profileImageWidget;

  const IntroductionDesktopPage({
    super.key,
    required this.title,
    required this.description,
    required this.socialIconsRow,
    required this.cvDownloadButton,
    required this.backgroundHiText,
    required this.profileImageWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          backgroundHiText,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  title,
                  description,
                  Row(children: [cvDownloadButton, socialIconsRow]),
                ],
              ),
              profileImageWidget,
            ],
          ),
        ],
      ),
    );
  }
}
