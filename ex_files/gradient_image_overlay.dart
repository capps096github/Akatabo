import '../../akatabo_exporter.dart';

class GradientImageOverlay extends StatelessWidget {
  const GradientImageOverlay({
    super.key,
    this.stops,
    required this.colors,
    required this.imagePath,
  });

  final List<double>? stops;

//  colors
  final List<Color> colors;

  // image path
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    //
    return Stack(
      children: [
        // image asset
        Positioned.fill(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),

        //
        Positioned.fill(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: stops,
                colors: colors,
              ),
            ),
            child: Container(),
          ),
        ),
      ],
    );
  }
}
