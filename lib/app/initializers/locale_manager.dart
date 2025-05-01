import 'package:portfolio_core/portfolio_core.dart';

import '../../core/core.dart';
import '../../features/features.dart';

/// Manages the application's locale settings.
///
/// Provides utilities for validating, retrieving, and managing application locales
/// with appropriate fallback mechanisms.
class LocaleManager {
  static final PortfolioLogger _logger = PortfolioLogger('LocaleManager');

  /// Checks if the provided locale is supported by the application.
  ///
  /// A locale is considered supported if its language code matches
  /// any of the language codes in the supported locales list.
  ///
  /// [locale] is the locale to check for support.
  ///
  /// Returns true if the locale is supported, false otherwise.
  static bool isLocaleSupported(Locale locale) {
    return AppLocaleUtils.supportedLocales
        .map((e) => e.languageCode)
        .contains(locale.languageCode);
  }

  /// Validates the device locale against supported locales.
  ///
  /// Attempts to use the device locale if it's supported by the application.
  /// Otherwise falls back to the first supported locale.
  ///
  /// Returns the validated locale (either device locale or fallback).
  static Locale validateDeviceLocale() {
    final fallbackLocale = AppLocaleUtils.supportedLocales.first;
    try {
      final Locale locale = AppLocaleUtils.findDeviceLocale().flutterLocale;
      final bool isSupported = isLocaleSupported(locale);
      return isSupported ? locale : fallbackLocale;
    } catch (e) {
      _logger.warning('Error validating device locale, using fallback', e);
      return fallbackLocale;
    }
  }

  /// Retrieves the initial locale for the application.
  ///
  /// Uses the following resolution strategy:
  /// 1. Try to load the cached locale
  /// 2. If no cache exists or cached locale is not supported, use device locale
  /// 3. If device locale is not supported, use the first supported locale
  ///
  /// [cacheRepository] is used to retrieve the cached locale.
  ///
  /// Returns the resolved locale for initial application setup.
  static Future<Locale> getInitialLocale() async {
    try {
      final languageCode = null;
      if (languageCode == null) {
        _logger.info('No cached locale found, using device locale');
        return validateDeviceLocale();
      }

      final Locale locale = Locale(languageCode);
      final bool isSupported = isLocaleSupported(locale);

      if (!isSupported) {
        _logger.info(
          'Cached locale $languageCode not supported, using device locale',
        );
        return validateDeviceLocale();
      }

      _logger.info('Using cached locale: $languageCode');
      return locale;
    } catch (e) {
      _logger.warning('Error loading cached locale, using device locale', e);
      return validateDeviceLocale();
    }
  }
}
