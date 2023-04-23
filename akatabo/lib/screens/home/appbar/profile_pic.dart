

import '../../../akatabo_exporter.dart';

class HomeProfilePic extends ConsumerWidget {
  const HomeProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    // app user from akataboUser
    final akataboUser = ref.watch(akataboUserProvider);

    return Padding(
      padding: padding8,
      child: InkWell(
        onTap: () {
          // navigate to the profile page
          context.push(profilePath);
        },
        borderRadius: borderRadius4,
        child: Hero(
          tag: userProfileTag,
          child: AppImage(
            imageUrl: akataboUser.profilePic,
            borderRadius: borderRadius4,
            width: spacing40,
            height: spacing40,
          ),
        ),
      ),
    );
  }
}
