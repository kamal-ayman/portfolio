import 'package:portfolio_ui/portfolio_ui.dart';

class AppConfigEntity {
  final String logoURL;
  final PortfolioColorPalette lightColorPalette;
  final PortfolioColorPalette darkColorPalette;

  AppConfigEntity({
    required this.logoURL,
    required this.lightColorPalette,
    required this.darkColorPalette,
  });

  static final AppConfigEntity fallbackInstance = AppConfigEntity(
    logoURL: 'assets/logo.png',
    darkColorPalette: PortfolioColorPalette.dark,
    lightColorPalette: PortfolioColorPalette.light,
  );

  AppConfigEntity copyWith({
    String? logoURL,
    PortfolioColorPalette? lightColorPalette,
    PortfolioColorPalette? darkColorPalette,
  }) {
    return AppConfigEntity(
      logoURL: logoURL ?? this.logoURL,
      lightColorPalette: lightColorPalette ?? this.lightColorPalette,
      darkColorPalette: darkColorPalette ?? this.darkColorPalette,
    );
  }

  @override
  String toString() {
    return 'AppConfigEntity(logoURL: $logoURL, lightColorPalette: $lightColorPalette, darkColorPalette: $darkColorPalette)';
  }
}
