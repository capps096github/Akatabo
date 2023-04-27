import '../../akatabo_exporter.dart';
import 'appbar/home_appbar.dart';
import 'home_body.dart';
import 'navbar/home_navbar.dart';
import 'navbar/screens_data.dart';
import 'providers/navbar_index_provider.dart';

class AkataboHome extends ConsumerWidget {
  const AkataboHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    return HomeBody();
  }
}
