import 'package:flutter/widgets.dart';

extension BuildContextResponsiveExtensions on BuildContext {
  bool get isMobile => MediaQuery.sizeOf(this).width < 600;
  bool get isDesktop => MediaQuery.sizeOf(this).width >= 1200;
  bool get isTablet => !isMobile && !isDesktop;
}
