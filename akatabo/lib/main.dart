import 'akatabo_exporter.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // to remove the # from the url
  usePathUrlStrategy();

  //
  runApp(
    const ProviderScope(
      child: Akatabo(),
    ),
  );
}
