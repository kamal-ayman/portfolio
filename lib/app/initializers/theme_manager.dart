import 'dart:ui';
import 'package:portfolio_core/portfolio_core.dart';

/// Manages the application's theme settings
class ThemeManager {
  static final PortfolioLogger _logger = PortfolioLogger('ThemeManager');

  /// Retrieves the application's initial brightness setting
  ///
  /// Attempts to use cached brightness, falls back to platform brightness if needed
  static Future<Brightness> getInitialBrightness() async {
    final platformBrightness = PlatformDispatcher.instance.platformBrightness;

    try {
      final brightness = null;

      // If there is no cached brightness, we will use the device brightness
      if (brightness == null) {
        _logger.info(
          'No cached brightness found, using platform brightness: $platformBrightness',
        );
        return platformBrightness;
      }

      final bool isSupported = ['light', 'dark'].contains(brightness);
      if (!isSupported) {
        _logger.warning(
          'Cached brightness "$brightness" not supported, using platform brightness',
        );
        return platformBrightness;
      }

      final result = brightness == 'light' ? Brightness.light : Brightness.dark;
      _logger.info('Using cached brightness: $result');
      return result;
    } catch (e, s) {
      _logger.warning(
        'Error loading cached brightness, using platform brightness',
        e,
        s,
      );
      return platformBrightness;
    }
  }
}
