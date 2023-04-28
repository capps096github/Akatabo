import '../../../akatabo_exporter.dart';

class LogOutButton extends ConsumerWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding16,
      child: AppButton(
        icon: Icons.logout,
        label: "LOG OUT",
        buttonColor: akataboRed,
        textColor: akataboWhite,
        onTap: () async {
          // current app user
          final akataboUser = FirebaseAuth.instance.currentUser;

          // auth prvider
          final authProvider = akataboUser?.providerData[0].displayName;

          // wait for future to signout the user
          await Future.wait([
            if (authProvider != null && authProvider == "google.com")
              GoogleSignIn().signOut(),
            //
            FirebaseAuth.instance.signOut(),
          ]).then((_) {
            // go to auth
            context.go(authPath);

            // reset the auth index provider
            ref.read(authPageIndexProvider.notifier).state = 0;
          });
        },
      ),
    );
  }
}
