import '../../../akatabo_exporter.dart';

class LinesAccepted extends StatelessWidget {
  const LinesAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // mtn
        SvgPicture.asset(
          mtnIcon,
          height: 30,
        ),

        const HorizontalSpace(of: spacing16),

        // airtel logo
        SvgPicture.asset(
          airtelIcon,
          height: 30,
        ),
      ],
    );
  }
}
