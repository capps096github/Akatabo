import '../../akatabo_exporter.dart';
import 'appbar/home_appbar.dart';
import 'home_page.dart';

class AkataboHome extends ConsumerWidget {
  const AkataboHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    return Scaffold(
      appBar: homeAppBar(context),
      body: const HomePage(),
    );
  }
}
