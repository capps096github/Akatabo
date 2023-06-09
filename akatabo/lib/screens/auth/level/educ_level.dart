import '../../../akatabo_exporter.dart';
import '../components/auth_error_text.dart';
import 'educ_dropdown.dart';
import 'get_started_btn.dart';

class EducationLevel extends StatelessWidget {
  const EducationLevel({super.key});

  @override
  Widget build(BuildContext context) {
    // screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // screen height
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Spacer(),
        Container(
          height: screenHeight * .45,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: circularRadius16,
              topRight: circularRadius16,
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                akataboColor.withOpacity(0.6),
                akataboColor.withOpacity(0.75),
                akataboColor,
                akataboColor,
              ],
            ),
          ),
          child: Padding(
            padding: padding16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Image.asset(
                  fullIcon,
                  fit: BoxFit.fill,
                  width: 98,
                  height: 80,
                ),

                const VerticalSpace(of: spacing32),

                // text
                const Text(
                  "Select Your Level of Education",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: akataboWhite,
                    fontSize: 16,
                  ),
                ),

                // space
                const VerticalSpace(of: spacing8),

                // drop down
                const EducationLevelDropdown(),

                const VerticalSpace(of: spacing32),

                // error
                const AuthErrorText(),

                // get started button
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
