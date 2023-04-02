import '../../akatabo_exporter.dart';

// TODO make this provider based by generating the theme provider in the provider folder
final akataboTheme = AkataboTheme.light;

class AkataboTheme {
  static ThemeData get light {
    // text theme
    final TextTheme textTheme = ThemeData.light().textTheme;

    const textStyleFunction = GoogleFonts.lato;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: akataboColor,
      //* -- Visual Density
      visualDensity: VisualDensity.adaptivePlatformDensity,
      //* -- Appbar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: akataboSecondaryColor,
        ),
        backgroundColor: akataboWhite,
        titleTextStyle: textStyleFunction(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: akataboSecondaryColor,
        ),
      ),
      //* -- tooltip
      tooltipTheme: const TooltipThemeData(
        textStyle: TextStyle(color: akataboColor),
        decoration: BoxDecoration(
          color: akataboSecondaryColor,
          borderRadius: borderRadius4,
        ),
      ),
      //* -- text button
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(padding16),
        ),
      ),
      //* Text Theme
      textTheme: TextTheme(
        displayLarge: textStyleFunction(textStyle: textTheme.displayLarge),
        displayMedium: textStyleFunction(textStyle: textTheme.displayMedium),
        displaySmall: textStyleFunction(textStyle: textTheme.displaySmall),
        headlineLarge: textStyleFunction(textStyle: textTheme.headlineLarge),
        headlineMedium: textStyleFunction(textStyle: textTheme.headlineMedium),
        headlineSmall: textStyleFunction(textStyle: textTheme.headlineSmall),
        titleLarge: textStyleFunction(textStyle: textTheme.titleLarge),
        titleMedium: textStyleFunction(textStyle: textTheme.titleMedium),
        titleSmall: textStyleFunction(textStyle: textTheme.titleSmall),
        bodyLarge: textStyleFunction(textStyle: textTheme.bodyLarge),
        bodyMedium: textStyleFunction(textStyle: textTheme.bodyMedium),
        bodySmall: textStyleFunction(textStyle: textTheme.bodySmall),
        labelLarge: textStyleFunction(textStyle: textTheme.labelLarge),
        labelMedium: textStyleFunction(textStyle: textTheme.labelMedium),
        labelSmall: textStyleFunction(textStyle: textTheme.labelSmall),
      ),
    );
  }
}
