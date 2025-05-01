import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

import '../core/core.dart';
import '../features/features.dart';
import 'portfolio_requirements.dart';

final class Portfolio extends StatelessWidget {
  final PortfolioRequirements requirements;

  const Portfolio({super.key, required this.requirements});

  @override
  Widget build(BuildContext context) {
    final config = requirements.config;
    final brightness = requirements.brightness;
    final bool isLightMode = brightness == Brightness.light;
    final lightTheme = PortfolioTheme.fromPortfolioColorPalette(
      config.lightColorPalette,
    );
    final darkTheme = PortfolioTheme.fromPortfolioColorPalette(
      config.darkColorPalette,
    );
    return TranslationProvider(
      child: PortfolioThemeProvider(
        darkTheme: darkTheme,
        lightTheme: lightTheme,
        brightness: brightness,
        child: Builder(
          builder: (context) {
            return MaterialApp.router(
              locale: requirements.locale,
              debugShowCheckedModeBanner: false,
              supportedLocales: AppLocaleUtils.supportedLocales,
              localizationsDelegates: GlobalMaterialLocalizations.delegates,
              routerConfig: requirements.routerConfig,
              localeResolutionCallback: (locale, supportedLocales) {
                if (locale == null) {
                  return supportedLocales.first;
                }
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale.languageCode) {
                    return supportedLocale;
                  }
                }
                return supportedLocales.first;
              },

              themeMode: isLightMode ? ThemeMode.light : ThemeMode.dark,
              theme: PortfolioTheme.materialThemeDataFromTheme(
                lightTheme,
                context,
              ),
              darkTheme: PortfolioTheme.materialThemeDataFromTheme(
                darkTheme,
                context,
              ),
            );
          },
        ),
      ),
    );
  }
}
