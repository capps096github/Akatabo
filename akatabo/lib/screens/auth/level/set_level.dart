import '../../../akatabo_exporter.dart';
import '../auth_background.dart';
import '../auth_body.dart';
import 'educ_level.dart';

class SetEducationLevel extends StatelessWidget {
  const SetEducationLevel({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return const Scaffold(
      backgroundColor: akataboColor,
      body: AuthBackground(
        screen: AuthBody(child: EducationLevel()),
        imagePath: getImage,
        horizontalPadding: 0,
      ),
    );
  }
}
