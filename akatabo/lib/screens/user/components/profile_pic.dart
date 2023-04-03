// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

import '../../../akatabo_exporter.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    this.radius = spacing72,
    this.margin = margin8,
    this.border,
    required this.appUser,
  });

  // redius
  final double? radius;

  // border
  final BoxBorder? border;

// margin
  final EdgeInsetsGeometry? margin;

  final AkataboUser appUser;

  @override
  Widget build(BuildContext context) {
    // profile pic
    final profilePic = appUser.profilePic;

    return Hero(
      tag: userProfileTag,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: akataboBackground.withOpacity(.95),
          shape: BoxShape.circle,
          border: border,
        ),
        child: CircleAvatar(
          backgroundColor: akataboBackground.withOpacity(.3),
          backgroundImage: CachedNetworkImageProvider(profilePic),
          radius: radius,
        ),
      ),
    );
  }
}
