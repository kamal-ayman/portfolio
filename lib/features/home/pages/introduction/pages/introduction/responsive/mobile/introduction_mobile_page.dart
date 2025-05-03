import 'package:flutter/material.dart';

class IntroductionMobilePage extends StatelessWidget {
  final Widget titleText;
  final Widget summaryText;
  final Widget socialIconsRow;
  final Widget cvDownloadButton;
  final Widget backgroundHiText;
  final Widget backgroundShadow;
  final Widget profileImageWidget;

  const IntroductionMobilePage({
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
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: backgroundShadow,
          ),
          backgroundHiText,
          Column(
            spacing: 30,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              titleText,
              profileImageWidget,
              summaryText,
              Wrap(
                spacing: 20,
                runSpacing: 20,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [cvDownloadButton, socialIconsRow],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
