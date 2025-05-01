import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/core.dart';
import '../features/features.dart';
import 'initializers/initializers.dart';

/// Main initialization class that coordinates the app's startup requirements
final class PortfolioRequirements {
  /// The application's current locale
  final Locale locale;

  /// The application's current brightness theme setting
  final Brightness brightness;

  /// The application's configuration entity
  final AppConfigEntity config;

  /// Router configuration for navigation
  final RouterConfig<Object> routerConfig;

  /// Private constructor to ensure initialization through static methods
  const PortfolioRequirements({
    required this.locale,
    required this.config,
    required this.brightness,
    required this.routerConfig,
  });

  /// Initializes all application requirements before running the app
  ///
  /// This method coordinates the initialization of:
  /// - Cache repository
  /// - Configuration repository
  /// - Authentication repository
  /// - Locale and theme settings
  /// - BLoC providers
  /// - Repository providers
  /// - Router configuration
  ///
  /// Returns a fully initialized [PortfolioRequirements] instance
  static Future<PortfolioRequirements> initialize({
    String? mandatoryStartupRoute,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    if (PlatformChecker.isIOS) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [SystemUiOverlay.top],
      );
    }

    final settingsFutures = [
      LocaleManager.getInitialLocale(),
      ThemeManager.getInitialBrightness(),
    ];
    final [locale as Locale, brightness as Brightness] = await Future.wait([
      ...settingsFutures,
    ]);

    final config = AppConfigEntity.fallbackInstance;

    // Get maintenance and version status & initialize authentication in parallel
    final initialRoute = null;

    return PortfolioRequirements(
      config: config,
      locale: locale,
      brightness: brightness,
      routerConfig: RouterFactory.createRouter(
        initialRoute: mandatoryStartupRoute ?? initialRoute,
      ),
    );
  }
}
