import '../../../akatabo_exporter.dart';

// class ProfileClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.moveTo(0,
//         size.height - 10); // Start at the bottom-left corner of the container
//     path.lineTo(
//         0, size.height / 2); // Line to the middle-left point of the container
//     path.quadraticBezierTo(size.width / 2, -10, size.width,
//         size.height / 2); // Draw the concave curve to the middle-right point
//     path.lineTo(size.width,
//         size.height - 10); // Line to the bottom-right corner of the container
//     path.lineTo(size.width, 0); // Line to the top-right corner of the container
//     path.lineTo(0, 0); // Line to the top-left corner of the container
//     path.close(); // Close the path
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(
        0, size.height - 20); // Move to the bottom-left corner of the container
    path.quadraticBezierTo(size.width / 2, size.height + 20, size.width,
        size.height - 20); // Draw the convex curve to the bottom-right corner
    path.lineTo(size.width, 0); // Line to the top-right corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
