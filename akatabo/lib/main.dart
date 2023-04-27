import 'akatabo_exporter.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // to remove the # from the url
  usePathUrlStrategy();

  //
  runApp(
    const ProviderScope(
      child: Akatabo(),
    ),
  );
}
