import 'package:uuid/uuid.dart';

class AkataboVideo {
  // id
  final String videoID;

  // title
  final String title;

  // description
  final String description;

  // userId
  final String userId;

  // videoUrl
  final String videoUrl;

  // thumbnailUrl
  final String thumbnailUrl;

  // ratings (class after)
  final double rating;

  // views

  AkataboVideo({
    required this.title,
    required this.description,
    required this.userId,
    required this.videoUrl,
    required this.thumbnailUrl,
    required this.rating,
  }) : videoID = const Uuid().v4();

  // postedBy, get this from the user id for now put by @userid, buh later on it will be changed
  String get postedBy => '@$userId';

}
