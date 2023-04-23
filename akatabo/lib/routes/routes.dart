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
