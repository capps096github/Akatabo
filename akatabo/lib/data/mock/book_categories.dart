// mock book categories
import '../../akatabo_exporter.dart';

final List<BookCategory> bookCategories = [
  BookCategory(
    title: "Science",
    image: defaultBookImage,
    colorCode: akataboGreen.value,
    bookIds: ["bookIds"],
  ),
  BookCategory(
    title: "English",
    image: defaultBookImage,
    colorCode: akataboRed.value,
    bookIds: ["bookIds"],
  ),
  BookCategory(
    title: "SST",
    image: defaultBookImage,
    colorCode: akataboColor.value,
    bookIds: ["bookIds"],
  ),
  BookCategory(
    title: "Mathematics",
    image: defaultBookImage,
    colorCode: akataboPink.value,
    bookIds: ["bookIds"],
  ),
];
