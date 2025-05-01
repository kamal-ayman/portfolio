import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../theming/theming.dart';

extension ViewThemeExtension on BuildContext {
  MixThemeData get theme => MixTheme.of(this);

  StyledTokens<ColorToken, Color> get colors => theme.colors;

  StyledTokens<TextStyleToken, TextStyle> get textStyles => theme.textStyles;

  StyledTokens<RadiusToken, Radius> get radii => theme.radii;
  Color get primaryColor => colors[$portfolioToken.color.primary]!;
  Color get primary1Color => colors[$portfolioToken.color.primary1]!;
  Color get primary2Color => colors[$portfolioToken.color.primary2]!;
  Color get primary3Color => colors[$portfolioToken.color.primary3]!;
  Color get secondaryColor => colors[$portfolioToken.color.secondary]!;
  Color get accent1Color => colors[$portfolioToken.color.accent1]!;
  Color get accent2Color => colors[$portfolioToken.color.accent2]!;
  Color get scrollbarPrimaryColor =>
      colors[$portfolioToken.color.scrollbarPrimary]!;
  Color get scrollbarSecondaryColor =>
      colors[$portfolioToken.color.scrollbarSecondary]!;
  Color get grey1Color => colors[$portfolioToken.color.grey1]!;
  Color get grey2Color => colors[$portfolioToken.color.grey2]!;
  Color get grey3Color => colors[$portfolioToken.color.grey3]!;
  Color get grey4Color => colors[$portfolioToken.color.grey4]!;
  Color get grey5Color => colors[$portfolioToken.color.grey5]!;
  Color get grey6Color => colors[$portfolioToken.color.grey6]!;
  Color get backgroundColor => colors[$portfolioToken.color.background]!;
  Color get background2Color => colors[$portfolioToken.color.background2]!;
  Color get background3Color => colors[$portfolioToken.color.background3]!;
  Color get background4Color => colors[$portfolioToken.color.background4]!;
  Color get borderColor => colors[$portfolioToken.color.border]!;
  Color get border1Color => colors[$portfolioToken.color.border1]!;
  Color get headingPrimaryColor =>
      colors[$portfolioToken.color.headingPrimary]!;
  Color get headingSecondaryColor =>
      colors[$portfolioToken.color.headingSecondary]!;
  Color get errorColor => colors[$portfolioToken.color.errorColor]!;

  TextStyle get h1TextStyle => textStyles[$portfolioToken.textStyle.h1]!;
  TextStyle get h2TextStyle => textStyles[$portfolioToken.textStyle.h2]!;
  TextStyle get h3TextStyle => textStyles[$portfolioToken.textStyle.h3]!;
  TextStyle get h4TextStyle => textStyles[$portfolioToken.textStyle.h4]!;
  TextStyle get h5TextStyle => textStyles[$portfolioToken.textStyle.h5]!;
  TextStyle get h6TextStyle => textStyles[$portfolioToken.textStyle.h6]!;
  TextStyle get subTitleTextStyle =>
      textStyles[$portfolioToken.textStyle.subTitle]!;
  TextStyle get paragraphTextStyle =>
      textStyles[$portfolioToken.textStyle.paragraph]!;
  TextStyle get smallTextStyle =>
      textStyles[$portfolioToken.textStyle.smallText]!;
  TextStyle get buttonsTextStyle =>
      textStyles[$portfolioToken.textStyle.buttons]!;

  Radius get extraSmallRadius => radii[$portfolioToken.radius.extraSmall]!;
  Radius get smallRadius => radii[$portfolioToken.radius.small]!;
  Radius get mediumRadius => radii[$portfolioToken.radius.medium]!;
  Radius get largeRadius => radii[$portfolioToken.radius.large]!;
}
