import '../../../akatabo_exporter.dart';

class ProfileNameEmail extends StatelessWidget {
  const ProfileNameEmail({
    super.key,
    required this.appUser,
  });

  final AkataboUser appUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const VerticalSpace(of: spacing8),
        // name get the first name by splitting the name
        Text(
          appUser.username,
          style: const TextStyle(
            fontSize: fontSize24,
            fontWeight: FontWeight.w900,
            color: akataboSecondaryColor,
          ),
        ),

        // email
        Text(
          appUser.email,
          style: TextStyle(
            fontSize: fontSize16,
            fontWeight: FontWeight.bold,
            color: akataboColor.withOpacity(.6),
          ),
        ),
      ],
    );
  }
}
