import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../theming/theming.dart';

extension ViewThemeExtension on BuildContext {
  MixThemeData get theme => MixTheme.of(this);

  StyledTokens<ColorToken, Color> get colors => theme.colors;

  StyledTokens<TextStyleToken, TextStyle> get textStyles => theme.textStyles;

  StyledTokens<RadiusToken, Radius> get radii => theme.radii;

  PortfolioColorToken get _color => $portfolioToken.color;

  Color get grey1Color => colors[_color.grey1]!;
  Color get grey2Color => colors[_color.grey2]!;
  Color get grey3Color => colors[_color.grey3]!;
  Color get grey4Color => colors[_color.grey4]!;
  Color get grey5Color => colors[_color.grey5]!;
  Color get grey6Color => colors[_color.grey6]!;
  Color get borderColor => colors[_color.border]!;
  Color get accent1Color => colors[_color.accent1]!;
  Color get accent2Color => colors[_color.accent2]!;
  Color get border1Color => colors[_color.border1]!;
  Color get errorColor => colors[_color.errorColor]!;
  Color get primaryColor => colors[_color.primary]!;
  Color get primary1Color => colors[_color.primary1]!;
  Color get primary2Color => colors[_color.primary2]!;
  Color get primary3Color => colors[_color.primary3]!;
  Color get secondaryColor => colors[_color.secondary]!;
  Color get backgroundColor => colors[_color.background]!;
  Color get background2Color => colors[_color.background2]!;
  Color get background3Color => colors[_color.background3]!;
  Color get background4Color => colors[_color.background4]!;
  Color get headingPrimaryColor => colors[_color.headingPrimary]!;
  Color get headingSecondaryColor => colors[_color.headingSecondary]!;
  Color get scrollbarPrimaryColor => colors[_color.scrollbarPrimary]!;
  Color get scrollbarSecondaryColor => colors[_color.scrollbarSecondary]!;

  PortfolioTextStyleToken get _textStyle => $portfolioToken.textStyle;

  TextStyle get h1TextStyle => textStyles[_textStyle.h1]!;
  TextStyle get h2TextStyle => textStyles[_textStyle.h2]!;
  TextStyle get h3TextStyle => textStyles[_textStyle.h3]!;
  TextStyle get h4TextStyle => textStyles[_textStyle.h4]!;
  TextStyle get h5TextStyle => textStyles[_textStyle.h5]!;
  TextStyle get h6TextStyle => textStyles[_textStyle.h6]!;
  TextStyle get smallTextStyle => textStyles[_textStyle.smallText]!;
  TextStyle get buttonsTextStyle => textStyles[_textStyle.buttons]!;
  TextStyle get subTitleTextStyle => textStyles[_textStyle.subTitle]!;
  TextStyle get paragraphTextStyle => textStyles[_textStyle.paragraph]!;

  PortfolioRadiusToken get _radius => $portfolioToken.radius;

  Radius get extraSmallRadius => radii[_radius.extraSmall]!;
  Radius get smallRadius => radii[_radius.small]!;
  Radius get mediumRadius => radii[_radius.medium]!;
  Radius get largeRadius => radii[_radius.large]!;
}
