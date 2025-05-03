import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

final class PortfolioTheme {
  PortfolioTheme._();

  static final MixThemeData light = fromPortfolioColorPalette(
    PortfolioColorPalette.light,
  );
  static final MixThemeData dark = fromPortfolioColorPalette(
    PortfolioColorPalette.dark,
  );

  static MixThemeData fromBrightness(Brightness brightness) =>
      brightness == Brightness.light ? light : dark;

  /// You can override the existing tokens by using the override parameters
  /// and they will be merged with the existing ones
  static MixThemeData fromPortfolioColorPalette(
    PortfolioColorPalette palette, {
    Map<ColorToken, Color> colorOverrides = const {},
    Map<RadiusToken, Radius> radiusOverrides = const {},
    Map<TextStyleToken, TextStyle> textStyleOverrides = const {},
  }) {
    final colorTokens = $portfolioToken.color;
    final radiusTokens = $portfolioToken.radius;
    final styleTokens = $portfolioToken.textStyle;
    final fontFamily = GoogleFonts.sora().fontFamily ?? 'Sora';
    final fallbackFontFamily =
        GoogleFonts.ibmPlexSansArabic().fontFamily ?? 'Sora';
    return MixThemeData(
      colors: {
        colorTokens.grey1: palette.grey1,
        colorTokens.grey2: palette.grey2,
        colorTokens.grey3: palette.grey3,
        colorTokens.grey4: palette.grey4,
        colorTokens.grey5: palette.grey5,
        colorTokens.grey6: palette.grey6,
        colorTokens.border: palette.border,
        colorTokens.border1: palette.border1,
        colorTokens.accent1: palette.accent1,
        colorTokens.accent2: palette.accent2,
        colorTokens.primary: palette.primary,
        colorTokens.primary1: palette.primary1,
        colorTokens.primary2: palette.primary2,
        colorTokens.primary3: palette.primary3,
        colorTokens.secondary: palette.secondary,
        colorTokens.errorColor: palette.errorColor,
        colorTokens.background: palette.background,
        colorTokens.background2: palette.background2,
        colorTokens.background3: palette.background3,
        colorTokens.background4: palette.background4,
        colorTokens.scrollbarPrimary: palette.scrollbarPrimary,
        colorTokens.scrollbarSecondary: palette.scrollbarSecondary,
        colorTokens.headingPrimary: palette.headingPrimary,
        colorTokens.headingSecondary: palette.headingSecondary,
      }..addAll(colorOverrides),
      textStyles: {
        // headline
        styleTokens.h1: TextStyle(
          fontSize: 65,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        styleTokens.h2: TextStyle(
          fontSize: 45,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        styleTokens.h3: TextStyle(
          fontSize: 30,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        styleTokens.h4: TextStyle(
          fontSize: 24,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        styleTokens.h5: TextStyle(
          fontSize: 22,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        styleTokens.h6: TextStyle(
          fontSize: 18,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        // subtitle
        styleTokens.subTitle: TextStyle(
          fontSize: 36,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        // paragraph
        styleTokens.paragraph: TextStyle(
          fontSize: 18,
          height: 1.45,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        // buttons
        styleTokens.buttons: TextStyle(
          fontSize: 15,
          height: 1,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontFamilyFallback: [fallbackFontFamily],
        ),
        // small text
        styleTokens.smallText: TextStyle(
          fontSize: 10,
          height: 1.45,
          color: palette.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontFamilyFallback: [fallbackFontFamily],
        ),
      }..addAll(textStyleOverrides),
      radii: {
        radiusTokens.extraSmall: Radius.circular(4),
        radiusTokens.small: Radius.circular(8),
        radiusTokens.medium: Radius.circular(16),
        radiusTokens.large: Radius.circular(32),
      }..addAll(radiusOverrides),
    );
  }

  /// This is used incase we need to use any existing material design components
  /// and this makes sure that the material components colors match our app theme
  static ThemeData materialThemeDataFromTheme(
    MixThemeData theme,
    BuildContext context,
  ) {
    final ThemeData defaultThemeData = Theme.of(context);
    final backgroundColor = context.backgroundColor;
    final primaryColor = context.primaryColor;
    final focusedBorderSide = BorderSide(color: primaryColor, width: 1);
    final focusedBorder = OutlineInputBorder(
      borderSide: focusedBorderSide,
      borderRadius: BorderRadius.all(context.smallRadius),
    );
    final textStyle = context.h5TextStyle;
    final mainInputDecoration = InputDecorationTheme(
      filled: false,
      helperMaxLines: 1,
      iconColor: primaryColor,
      suffixIconColor: primaryColor,
      prefixIconColor: primaryColor,
      focusedBorder: focusedBorder,
      helperStyle: textStyle.copyWith(color: primaryColor),
      errorStyle: textStyle.copyWith(color: context.errorColor),
      hintStyle: textStyle.copyWith(color: primaryColor.withValues(alpha: 0.8)),
      counterStyle: context.h6TextStyle.copyWith(color: primaryColor),
      enabledBorder: focusedBorder.copyWith(
        borderSide: focusedBorderSide.copyWith(color: context.grey3Color),
      ),
      errorBorder: focusedBorder.copyWith(
        borderSide: focusedBorderSide.copyWith(color: context.errorColor),
      ),
      focusedErrorBorder: focusedBorder.copyWith(
        borderSide: focusedBorderSide.copyWith(
          color: context.errorColor.withValues(alpha: 0.3),
        ),
      ),
      disabledBorder: focusedBorder.copyWith(
        borderSide: focusedBorderSide.copyWith(
          color: context.grey3Color.withValues(alpha: 0.5),
        ),
      ),
    );

    return defaultThemeData.copyWith(
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme.fromSeed(seedColor: context.primary1Color),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: primaryColor, width: 2),
          borderRadius: BorderRadius.circular(2),
        ),
        overlayColor: WidgetStateProperty.all(context.primary1Color),
        fillColor: WidgetStateProperty.fromMap({
          WidgetState.selected: context.primary1Color,
          WidgetState.any: context.backgroundColor,
        }),
        checkColor: WidgetStateProperty.fromMap({
          WidgetState.selected: backgroundColor,
          WidgetState.any: context.primary1Color,
        }),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
      ),
      inputDecorationTheme: mainInputDecoration,
    );
  }
}
