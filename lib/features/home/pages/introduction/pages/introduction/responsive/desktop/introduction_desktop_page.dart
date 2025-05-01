import 'package:flutter/material.dart';

class IntroductionDesktopPage extends StatelessWidget {
  final Widget title;
  final Widget description;
  final Widget socialIconsRow;
  final Widget cvDownloadButton;
  final Widget backgroundHiText;
  final Widget backgroundShadow;
  final Widget profileImageWidget;

  const IntroductionDesktopPage({
    super.key,
    required this.title,
    required this.description,
    required this.socialIconsRow,
    required this.cvDownloadButton,
    required this.backgroundHiText,
    required this.backgroundShadow,
    required this.profileImageWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntrinsicHeight(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: backgroundShadow,
            ),
            backgroundHiText,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    title,
                    description,
                    Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [cvDownloadButton, socialIconsRow],
                    ),
                  ],
                ),
                profileImageWidget,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
