import 'package:flutter/material.dart';

class IntroductionDesktopPage extends StatelessWidget {
  final Widget titleText;
  final Widget summaryText;
  final Widget socialIconsRow;
  final Widget cvDownloadButton;
  final Widget backgroundHiText;
  final Widget backgroundShadow;
  final Widget profileImageWidget;

  const IntroductionDesktopPage({
    super.key,
    required this.titleText,
    required this.summaryText,
    required this.socialIconsRow,
    required this.cvDownloadButton,
    required this.backgroundHiText,
    required this.backgroundShadow,
    required this.profileImageWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: backgroundShadow,
          ),
          backgroundHiText,
          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  spacing: 20,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleText,
                    summaryText,
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [cvDownloadButton, socialIconsRow],
                    ),
                  ],
                ),
              ),
              profileImageWidget,
            ],
          ),
        ],
      ),
    );
  }
}
