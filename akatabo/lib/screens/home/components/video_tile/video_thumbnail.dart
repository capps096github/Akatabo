// Project imports:
import 'package:flutter/cupertino.dart';

import '../../../../akatabo_exporter.dart';

class VideoThumbnail extends StatelessWidget {
  const VideoThumbnail({
    Key? key,
    required this.videoPost,
    this.iconSize = 45,
  }) : super(key: key);

  final AkataboVideo videoPost;

  // icon size
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    // button Color
    const backgroundColor = akataboWhite;

    // text Color
    const textColor = akataboColor;

    return AspectRatio(
      aspectRatio: 1,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: maxVideoHeight),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AppImage(
              imageUrl: videoPost.thumbnailUrl,
              fit: BoxFit.fill,
            ),

            // image overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: akataboBlack.withOpacity(.25),
                ),
                // child video play button
                child: Center(
                  child: Container(
                    height: iconSize,
                    decoration: const BoxDecoration(
                      color: backgroundColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      CupertinoIcons.play_circle_fill,
                      color: textColor,
                      size: iconSize,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
