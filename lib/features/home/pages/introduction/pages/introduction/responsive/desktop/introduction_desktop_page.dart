import 'package:flutter/material.dart';

class IntroductionDesktopPage extends StatelessWidget {
  final Widget introText;
  final Widget socialIconsRow;
  final Widget cvDownloadButton;
  final Widget backgroundHiText;
  final Widget backgroundShadow;
  final Widget profileImageWidget;

  const IntroductionDesktopPage({
    super.key,
    required this.introText,
    required this.socialIconsRow,
    required this.cvDownloadButton,
    required this.backgroundHiText,
    required this.backgroundShadow,
    required this.profileImageWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: IntrinsicHeight(
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
                      spacing: 20,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        introText,
                        Row(
                          spacing: 20,
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
        ),
      ),
    );
  }
}
