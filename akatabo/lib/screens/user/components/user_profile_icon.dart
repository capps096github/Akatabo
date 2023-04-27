import '../../../akatabo_exporter.dart';
import 'profile_pic.dart';

class UserProfileIcon extends ConsumerWidget {
  const UserProfileIcon({
    super.key,
    required this.appUser,
  });

  final AkataboUser appUser;

  @override
  Widget build(BuildContext context, ref) {
    return Center(
      child: Tooltip(
        message: 'Edit profile picture',
        child: InkWell(
          onTap: () {
            //TODO Upload user profile picture
          },
          customBorder: const CircleBorder(),
          child: Ink(
            child: Stack(
              children: [
                //
                ProfilePic(
                  border: Border.all(
                    color: akataboSecondaryColor,
                    width: 2,
                  ),
                  appUser: appUser,
                ),
                //*TODO edit profile pic icon
                // Positioned(
                //   bottom: 10,
                //   right: 8,
                //   child: Container(
                //     width: spacing40,
                //     height: spacing40,
                //     decoration: const BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: akataboSecondaryColor,
                //     ),
                //     child: const Padding(
                //       padding: padding8,
                //       child: Icon(
                //         Icons.edit,
                //         size: 24,
                //         color: akataboWhite,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
