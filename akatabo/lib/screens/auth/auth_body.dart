// import '../../calcut_exporter.dart';
// import 'pages/auth_pages.dart';
// import 'auth_providers.dart';

// class AuthBody extends ConsumerWidget {
//   const AuthBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final appScreen = ref.watch(appScreenProvider);
//     final textColor = appScreen.textColor;

//     return Column(
//       children: [
//         ThickHorizontalDivider(
//           dividerColor: textColor,
//           thickness: 5,
//           dividerWidth: 70,
//           margin: const EdgeInsets.only(top: 16.0),
//         ),
//         Expanded(
//           child: AnimatedContainer(
//             duration: halfSeconds,
//             width: double.infinity,
//             height: double.infinity,
//             margin: const EdgeInsets.only(top: 16),
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
//             decoration: BoxDecoration(
//               color: textColor,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(15),
//                 topRight: Radius.circular(15),
//               ),
//             ),
//             child: Center(
//               child: ConstrainedBox(
//                 constraints: const BoxConstraints(maxWidth: 600),
//                 child: const _AuthBodyPages(),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _AuthBodyPages extends ConsumerWidget {
//   const _AuthBodyPages({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final authpageIndex = ref.watch(authPageIndexProvider);

//     // check if we are on mobile
//     final isMobile =
//         ref.watch(calcutResponsiveProvider(context)).isMobileScreen;

//     //
//     return PageTransitionSwitcher(
//       transitionBuilder: (child, animation, secondaryAnimation) {
//         // return FadeThroughTransition(
//         return SharedAxisTransition(
//           animation: animation,
//           secondaryAnimation: secondaryAnimation,
//           fillColor: calcutTransparent,
//           transitionType: isMobile
//               ? SharedAxisTransitionType.scaled
//               : SharedAxisTransitionType.horizontal,
//           child: child,
//         );
//       },
//       duration: halfSeconds,
//       child: authPages[authpageIndex],
//     );
//   }
// }
