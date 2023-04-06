import '../../akatabo_exporter.dart';

///An animation wrapper around [OpenContainer]
class OpenRoute extends StatelessWidget {
  const OpenRoute({
   super.key,
    required this.to,
    required this.closedBuilder,
    this.openColor = akataboColor,
    this.closedColor = akataboTransparent,
    required this.routePath,
    this.closedBorderRadius,
    this.closedShape,
  });

  final String routePath;
  final Color openColor, closedColor;

  ///The Widget we are navigating to
  final Widget to;

  // border radius for the closed container
  final BorderRadius? closedBorderRadius;

 final ShapeBorder? closedShape;

  final CloseContainerBuilder closedBuilder;
  @override
  Widget build(BuildContext context) {
    // TODO add ability to update url here
    //
    return OpenContainer(
      openBuilder: (context, _) => to,
      openColor: openColor,
      useRootNavigator: true,
      //*closed
      closedColor: closedColor,
      clipBehavior: Clip.antiAlias,
      closedElevation: 0,
      closedShape:closedShape?? RoundedRectangleBorder(
        borderRadius: closedBorderRadius ??borderRadius8),
      closedBuilder: closedBuilder,
      routeSettings: RouteSettings(name: routePath),
    );
  }
}
