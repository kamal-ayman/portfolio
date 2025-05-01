import 'package:flutter/material.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

class BackgroundShadowWidget extends StatelessWidget {
  const BackgroundShadowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(50, -50),
      child: Container(
        height: 300,
        width: 300,
        decoration: ShapeDecoration(
          shape: CircleBorder(),
          shadows: [
            BoxShadow(
              color: context.primary1Color.withValues(alpha: 0.125),
              blurRadius: 100,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
