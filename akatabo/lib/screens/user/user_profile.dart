import '../../akatabo_exporter.dart';
import 'components/profile_header.dart';
import 'components/profile_info.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUser = ref.watch(akataboUserProvider);
    //
    return Scaffold(
      appBar: AppBar(
        // go to home
        leading: const AkataboBackButton(
          path: homePath,
          iconColor: akataboWhite,
        ),
        title: const Text(
          'Profile',
          style: TextStyle(color: akataboWhite),
        ),
        actions: [
          // settings
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: akataboWhite,
            ),
            onPressed: () => context.go(settingsPath),
          ),
        ],
        backgroundColor: akataboSecondaryColor,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          // profile header with photo, name, email
          ProfileHeader(appUser: appUser),

          const VerticalSpace(of: spacing32),

          // profile info
          ProfileInfo(appUser: appUser),
        ],
      ),
    );
  }
}
