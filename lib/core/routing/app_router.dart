import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class AppRouter {
  final String? initialLocation;

  AppRouter({
    this.initialLocation,
    bool debugLogDiagnostics = false,
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    _goRouter = _routes(
      navigatorKey,
      debugLogDiagnostics,
    );
  }

  late final GoRouter _goRouter;

  GoRouter get routes => _goRouter;

  GoRouter _routes(
    GlobalKey<NavigatorState> navigatorKey,
    bool debugLogDiagnostics,
  ) {
    return GoRouter(
      routes: $appRoutes,
      navigatorKey: navigatorKey,
      initialLocation: initialLocation,
      debugLogDiagnostics: debugLogDiagnostics,
    );
  }
}
