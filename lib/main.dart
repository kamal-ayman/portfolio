import 'package:portfolio/app/portfolio.dart';

import 'app/portfolio_requirements.dart';
import 'features/features.dart';

Future<void> main() async {
  final requirements = await PortfolioRequirements.initialize();
  runApp(Portfolio(requirements: requirements));
}
