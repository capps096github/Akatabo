// mock book categories
import '../../akatabo_exporter.dart';

final List<BookCategory> bookCategories = [
  BookCategory(
    title: "Science",
    colorCode: akataboGreen.value,
    image:
        "https://raw.githubusercontent.com/capps096github/Akatabo/master/images/science.png?token=GHSAT0AAAAAAB4VCTBW3MQDXT2QAJYD5F3EZB6IDGA",
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFF5BD3A5),
      const Color(0xFF0FFF50),
    ],
  ),
  BookCategory(
    title: "English",
    image:
        "https://raw.githubusercontent.com/capps096github/Akatabo/master/images/english.png?token=GHSAT0AAAAAAB4VCTBWZ3PINJZ4KXQJXJCQZB6IB5Q",
    colorCode: akataboRed.value,
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFFFF0000),
      const Color(0xFF9D82F7),
    ],
  ),
  BookCategory(
    title: "SST",
    image:
        "https://raw.githubusercontent.com/capps096github/Akatabo/master/images/sst.png?token=GHSAT0AAAAAAB4VCTBXVTJSG5YSXYRVWXD2ZB6IEBA",
    colorCode: akataboColor.value,
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFFF96D90),
      const Color(0xFFFE858C),
    ],
  ),
  BookCategory(
    title: "Mathematics",
    image:
        "https://raw.githubusercontent.com/capps096github/Akatabo/master/images/math.png?token=GHSAT0AAAAAAB4VCTBW67Q4GILFMAKKKSVAZB6ICZQ",
    colorCode: akataboPink.value,
    bookIds: ["bookIds"],
    gradientColors: [
      const Color(0xFF0096FF),
      const Color(0xFF6CC6FA),
    ],
  ),
];
