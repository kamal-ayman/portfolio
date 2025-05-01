import 'package:fluttertoast/fluttertoast.dart';

export 'extensions/extensions.dart';
export 'theming/theming.dart';
export 'widgets/widgets.dart';

enum PortfolioToastStyle { flat, fillColored, flatColored, minimal }

enum PortfolioToastLevel { info, success, warning, error }

final class PortfolioUi {
  PortfolioUi._();

  static void showToast({required String message}) {
    Fluttertoast.showToast(msg: message);
  }
}
