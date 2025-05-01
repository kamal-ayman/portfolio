import 'dart:async';

import 'package:go_router/go_router.dart';

import '../../features/features.dart';

part 'app_routes.g.dart';

@TypedGoRoute<HomePageRoute>(path: '/', name: 'home')
final class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeWrapper();
  }
}
