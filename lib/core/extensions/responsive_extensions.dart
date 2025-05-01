import 'package:flutter/widgets.dart';

extension ResponsiveExtensions on BoxConstraints {
  bool get isMobile => maxWidth < 600;
  bool get isDesktop => maxWidth >= 1200;
}
