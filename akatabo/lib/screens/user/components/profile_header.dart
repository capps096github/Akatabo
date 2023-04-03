import '../../../akatabo_exporter.dart';
import 'profile_clipper.dart';
import 'profile_name_email.dart';
import 'user_profile_icon.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.appUser});
  final AkataboUser appUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: ProfileClipper(),
              child: Container(
                color: akataboSecondaryColor,
                height: profileClipperHeight,
              ),
            ),
            UserProfileIcon(appUser: appUser),
          ],
        ),
        ProfileNameEmail(appUser: appUser),
      ],
    );
  }
}
