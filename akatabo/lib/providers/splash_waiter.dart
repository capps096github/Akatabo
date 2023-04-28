// future provider to wait for 2 seconds
import '../akatabo_exporter.dart';

final splashWaiterProvider = FutureProvider<void>((ref) async {
  await Future.delayed(oneSecond);
});
