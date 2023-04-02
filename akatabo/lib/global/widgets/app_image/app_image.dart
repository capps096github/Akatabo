import 'package:cached_network_image/cached_network_image.dart';
import '../../../../akatabo_exporter.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    required this.imageUrl,
    this.borderRadius = BorderRadius.zero,
    this.fit = BoxFit.cover, this.width, this.height,
  });

  final String imageUrl;
  final BoxFit fit;

  final BorderRadius? borderRadius;

  // width and height are optional
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: borderRadius,
        clipBehavior: Clip.antiAlias,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: fit,
          // TODO add image place holder could juhs be a simple container with a color
          // placeholder: (context, url) =>
          //     ThumbsImagePlaceholder(hash: blurhashCode),
          errorWidget: (context, url, _) => AkataboErrorPlaceHolder(
            errorText: 'The image on the $url could not be loaded',
            errorTitle: "Unable to Load Image",
          ),
        ),
      ),
    );
  }
}
