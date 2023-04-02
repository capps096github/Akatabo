import 'package:flutter/cupertino.dart';

import '../../akatabo_exporter.dart';

class AkataboPlaceholder extends StatelessWidget {
  ///This is a placeholder widget used to render blank sample screens in the app
  const AkataboPlaceholder({super.key, required this.title});

  /// title text for the screen
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: akataboRandomColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              CupertinoIcons.circle_grid_hex_fill,
              color: akataboWhite,
              size: 80,
            ),
          ),

          const VerticalSpace(of: spacing16),

          // title
          Text(
            title + akataboRandomColor.toString(),
            style: const TextStyle(color: akataboWhite),
          ),
        ],
      ),
    );
  }
}
