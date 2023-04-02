import '../../akatabo_exporter.dart';

///* this provides the default router delegate for the app

// router delegate
final akataboRouter = GoRouter(
  initialLocation: initialPath,
  restorationScopeId: akataboAppId,
  // turn off history tracking in the browser for all navigation
  // routerNeglect: true,
  routes: [
    //* home page
    GoRoute(
      path: homePath,
      builder: (context, state) => const AkataboHome(),
    ),

    //* auth
    GoRoute(
      path: authPath,
      builder: (context, state) => const AkataboAuth(),
    ),

    //* user

    // * settings
    GoRoute(
      path: settingsPath,
      builder: (context, state) => const AkataboSettings(),
    ),
  ],

  redirect: (_, state) {
    // if the user is not logged in, redirect to the auth page

    // if the user is logged in, don't redirect to any page just continue with the initial path
    return null;
  },
  //
  // refreshListenable: GoRouterRefreshStream(
  //   stream: FirebaseAuth.instance.authStateChanges(),
  // ),
  errorBuilder: (context, state) => AkataboErrorScreen(error: state.error),
  // log diagnostic info for your routes
  debugLogDiagnostics: true,
);
