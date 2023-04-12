import '../../../akatabo_exporter.dart';
import 'educ_level_body.dart';

class EducationLevel extends StatelessWidget {
  const EducationLevel({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: akataboColor,
      body: Stack(
        children: const [
          // image
          BackgroundImage(imagePath: getImage),

          //
          Align(
            alignment: Alignment.bottomCenter,
            child: EducationLevelBody(),
          ),
        ],
      ),
    );
  }
}
