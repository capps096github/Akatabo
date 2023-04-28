import '../../akatabo_exporter.dart';
import 'auth_background.dart';
import 'auth_body.dart';
import 'auth_page.dart';

class AkataboAuth extends ConsumerWidget {
  const AkataboAuth({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authpage = ref.watch(authPageProvider);

    return AkataboSplash(
      screen: Scaffold(
        backgroundColor: akataboColor,
        body: AuthBackground(
          screen: AuthBody(child: authpage.page),
          imagePath: authpage.imagePath,
        ),
      ),
    );
  }
}
