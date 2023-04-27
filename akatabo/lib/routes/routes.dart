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
      // builder: (context, state) => const AkataboSplash(),
      builder: (context, state) => const AkataboAuth(),
      // builder: (context, state) => const EducationLevel(),
    ),

    //* profile
    GoRoute(
      path: profilePath,
      builder: (context, state) => const UserProfile(),
    ),

    // * settings
    GoRoute(
      path: settingsPath,
      builder: (context, state) => const AkataboSettings(),
    ),

    // * books
    GoRoute(
      path: "$booksPath/:categoryId",
      builder: (context, state) {
        // get the books from the books list via the category id passed in the url as books/:id
        // category id
        final categoryId = state.params['categoryId']!;

        //
        return AkataboBooksList(categoryId: categoryId);
      },
    ),

    // * checkout
    GoRoute(
      path: checkoutPath,
      builder: (context, state) => const AkataboCheckout(),
    ),

    // * see all
    // categories
    GoRoute(
      path: seeAllCategoriesPath,
      builder: (context, state) => const SeeAllCategories(),
    ),

    // videos
    // GoRoute(
    //   path: seeAllVideosPath,
    //   builder: (context, state) => const SeeAllVideos(),
    // ),
  ],

  redirect: (_, state) {
    //! ** this calcut user is repeated here, and therefore don't delete it
    final akataboUser = FirebaseAuth.instance.currentUser;

    // set the user logged in variable
    final userIsNull = (akataboUser == null);

    // is authenticating
    final isAuthenticating = (state.subloc == authPath);

    // if the user is on the auth Screen or Welcome screen which also has the auth UI
    final loggingIn = (isAuthenticating);

    // if the user is null, then ...
    if (userIsNull) {
      // if the null user  is on auth or welcome page then we redirect to the auth page
      // else don't redirect to any page since the user is on the login page
      return loggingIn ? null : authPath;
    }

    // if the user is logged in but still on the login page, send them to
    // the home page
    if (loggingIn) return homePath;


    // no need to redirect at all if all conditions are passed
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
