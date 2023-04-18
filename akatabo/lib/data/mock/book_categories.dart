// mock book categories
import '../../akatabo_exporter.dart';

final List<BookCategory> bookCategories = [
  BookCategory(
    title: "Science",
    image: defaultBookImage,
    colorCode: akataboGreen.value,
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFF5BD3A5),
      const Color(0xFF0FFF50),
    ],
  ),
  BookCategory(
    title: "English",
    image: defaultBookImage,
    colorCode: akataboRed.value,
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFFFF0000),
      const Color(0xFF9D82F7),
    ],
  ),
  BookCategory(
    title: "SST",
    image: defaultBookImage,
    colorCode: akataboColor.value,
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFFF96D90),
      const Color(0xFFFE858C),
    ],
  ),
  BookCategory(
    title: "Mathematics",
    image: defaultBookImage,
    colorCode: akataboPink.value,
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFF0096FF),
      const Color(0xFF6CC6FA),
    ],
  ),
];
