import 'package:mix/mix.dart';

const $portfolioToken = PortfolioToken();

class PortfolioToken {
  const PortfolioToken();

  final color = const PortfolioColorToken();
  final radius = const PortfolioRadiusToken();
  final textStyle = const PortfolioTextStyleToken();
}

class PortfolioColorToken {
  const PortfolioColorToken();
  ColorToken get grey1 => const ColorToken('grey1');
  ColorToken get grey2 => const ColorToken('grey2');
  ColorToken get grey3 => const ColorToken('grey3');
  ColorToken get grey4 => const ColorToken('grey4');
  ColorToken get grey5 => const ColorToken('grey5');
  ColorToken get grey6 => const ColorToken('grey6');
  ColorToken get border => const ColorToken('border');
  ColorToken get accent1 => const ColorToken('accent1');
  ColorToken get accent2 => const ColorToken('accent2');
  ColorToken get border1 => const ColorToken('border1');
  ColorToken get primary => const ColorToken('primary');
  ColorToken get primary1 => const ColorToken('primary1');
  ColorToken get primary2 => const ColorToken('primary2');
  ColorToken get primary3 => const ColorToken('primary3');
  ColorToken get secondary => const ColorToken('secondary');
  ColorToken get errorColor => const ColorToken('error');
  ColorToken get background => const ColorToken('background');
  ColorToken get background2 => const ColorToken('background2');
  ColorToken get background3 => const ColorToken('background3');
  ColorToken get background4 => const ColorToken('background4');
  ColorToken get headingPrimary => const ColorToken('headingPrimary');
  ColorToken get headingSecondary => const ColorToken('headingSecondary');
  ColorToken get scrollbarPrimary => const ColorToken('scrollbarPrimary');
  ColorToken get scrollbarSecondary => const ColorToken('scrollbarSecondary');
}

class PortfolioTextStyleToken {
  const PortfolioTextStyleToken();

  TextStyleToken get h1 => const TextStyleToken('h1');
  TextStyleToken get h2 => const TextStyleToken('h2');
  TextStyleToken get h3 => const TextStyleToken('h3');
  TextStyleToken get h4 => const TextStyleToken('h4');
  TextStyleToken get h5 => const TextStyleToken('h5');
  TextStyleToken get h6 => const TextStyleToken('h6');
  TextStyleToken get buttons => const TextStyleToken('buttons');
  TextStyleToken get subTitle => const TextStyleToken('subTitle');
  TextStyleToken get smallText => const TextStyleToken('smallText');
  TextStyleToken get paragraph => const TextStyleToken('paragraph');
}

class PortfolioRadiusToken {
  const PortfolioRadiusToken();

  RadiusToken get extraSmall => const RadiusToken('extraSmallRadius');
  RadiusToken get small => const RadiusToken('smallRadius');
  RadiusToken get medium => const RadiusToken('mediumRadius');
  RadiusToken get large => const RadiusToken('largeRadius');
}
