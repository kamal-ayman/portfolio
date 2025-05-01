import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

final class PortfolioThemeProvider extends StatelessWidget {
  final Widget child;
  final Brightness brightness;
  final MixThemeData? darkTheme;
  final MixThemeData? lightTheme;

  const PortfolioThemeProvider({
    super.key,
    this.darkTheme,
    this.lightTheme,
    required this.child,
    this.brightness = Brightness.light,
  });

  @override
  Widget build(BuildContext context) {
    final appLighTheme =
        lightTheme ?? PortfolioTheme.fromBrightness(Brightness.light);
    final appDarkTheme =
        darkTheme ?? PortfolioTheme.fromBrightness(Brightness.dark);
    return MixTheme(
      data: brightness == Brightness.light ? appLighTheme : appDarkTheme,
      child: child,
    );
  }
}
