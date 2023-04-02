import 'akatabo_exporter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //
  runApp(
    const ProviderScope(
      child: Akatabo(),
    ),
  );
}
