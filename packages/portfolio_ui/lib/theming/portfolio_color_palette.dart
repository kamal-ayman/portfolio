import 'package:flutter/material.dart';

final class PortfolioColorPalette {
  final Color primary;
  final Color primary1;
  final Color primary2;
  final Color primary3;
  final Color secondary;
  final Color accent1;
  final Color accent2;
  final Color scrollbarPrimary;
  final Color headingPrimary;
  final Color headingSecondary;
  final Color scrollbarSecondary;
  final Color grey1;
  final Color grey2;
  final Color grey3;
  final Color grey4;
  final Color grey5;
  final Color grey6;
  final Color background;
  final Color background2;
  final Color background3;
  final Color background4;
  final Color border;
  final Color border1;
  final Color errorColor;

  const PortfolioColorPalette({
    required this.primary,
    required this.primary1,
    required this.primary2,
    required this.primary3,
    required this.secondary,
    required this.accent1,
    required this.accent2,
    required this.scrollbarPrimary,
    required this.headingPrimary,
    required this.headingSecondary,
    required this.scrollbarSecondary,
    required this.grey1,
    required this.grey2,
    required this.grey3,
    required this.grey4,
    required this.grey5,
    required this.grey6,
    required this.background,
    required this.background2,
    required this.background3,
    required this.background4,
    required this.border,
    required this.border1,
    required this.errorColor,
  });

  static const light = PortfolioColorPalette(
    primary: Color(0xff8750f7),
    primary1: Color(0xff2400ff),
    primary2: Color(0xff9b8dff),
    primary3: Color(0xff4654f9),
    secondary: Color(0xff2a1454),
    accent1: Color(0xff0f0715),
    accent2: Color(0xff140c1c),
    scrollbarPrimary: Color(0xff8750f7),
    headingPrimary: Color(0xff8750f7),
    headingSecondary: Color(0xffffffff),
    scrollbarSecondary: Color(0xff2a1454),
    grey1: Color(0xff747779),
    grey2: Color(0xffd9d9d9),
    grey3: Color(0xffdddddd),
    grey4: Color(0xff22272c),
    grey5: Color(0xff636363),
    grey6: Color(0xff1b262e),
    background: Color(0xff0c1115),
    background2: Color(0xff0e1418),
    background3: Color(0xff10171c),
    background4: Color(0xff151b1f),
    border: Color(0xff1b2227),
    border1: Color(0xff2a343c),
    errorColor: Color(0xffF41A1A),
  );

  static const dark = PortfolioColorPalette(
    primary: Color(0xff8750f7),
    primary1: Color(0xff2400ff),
    primary2: Color(0xff9b8dff),
    primary3: Color(0xff4654f9),
    secondary: Color(0xff2a1454),
    accent1: Color(0xff0f0715),
    accent2: Color(0xff140c1c),
    scrollbarPrimary: Color(0xff8750f7),
    headingPrimary: Color(0xff8750f7),
    headingSecondary: Color(0xffffffff),
    scrollbarSecondary: Color(0xff2a1454),
    grey1: Color(0xff747779),
    grey2: Color(0xffd9d9d9),
    grey3: Color(0xffdddddd),
    grey4: Color(0xff22272c),
    grey5: Color(0xff636363),
    grey6: Color(0xff1b262e),
    background: Color(0xff0c1115),
    background2: Color(0xff0e1418),
    background3: Color(0xff10171c),
    background4: Color(0xff151b1f),
    border: Color(0xff1b2227),
    border1: Color(0xff2a343c),
    errorColor: Color(0xffF41A1A),
  );
}
