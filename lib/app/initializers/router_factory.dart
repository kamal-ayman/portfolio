import 'package:portfolio_core/portfolio_core.dart';

import '../../core/routing/routing.dart';
import '../../features/features.dart';

final appNavigatorKey = GlobalKey<NavigatorState>();

/// Factory for creating and configuring the application's router
class RouterFactory {
  static final PortfolioLogger _logger = PortfolioLogger('RouterFactory');

  /// Creates and configures the application router
  ///
  /// @return Configured RouterConfig for the application
  static RouterConfig<Object> createRouter({String? initialRoute}) {
    return AppRouter(
      navigatorKey: appNavigatorKey,
      initialLocation: initialRoute ?? HomePageRoute().location,
    ).routes;
  }

  static Future<String?> checkInitialRoute() async {
    try {
      return null;
    } catch (e, s) {
      _logger.error('Error checking initial route', e, s);
      return null;
    }
  }
}
