import '../../akatabo_exporter.dart';
import 'appbar/home_appbar.dart';

class AkataboHome extends StatelessWidget {
  const AkataboHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),

      body: Column(
        children: [
          // text
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greeting akataboDefaultUser.firstName,
                  style: const TextStyle(
                    fontSize: 12,
                    color: akataboWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const VerticalSpace(of: 2),
                Text(
                  "What are you reading today?",
                  style: const TextStyle(
                    fontSize: 25,
                    color: akataboWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
                        
        ],
      )
    );
  }
}
