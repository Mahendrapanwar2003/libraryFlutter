part of ui_library;

class MyThemeData {
  static ThemeData themeDataLight({
    required Orientation? orientation,
    String? fontFamily,
  }) {
    return ThemeData(
      textTheme: MyTextThemeLight().myTextTheme(
        fontFamily: fontFamily,
      ),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: MyColorsLight().primaryColor),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.only(top: 1),
        constraints: BoxConstraints(maxHeight: 70.px),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: MyColorsLight().onPrimary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: MyColorsLight().primary),
        ),
        /*errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: MyColors().error),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: MyColors().error),
          ),*/
        //hintStyle: MyTextThemeStyle.bodyText2(MyColors().caption),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.px),
          ),
          maximumSize: Size(80.w, 50.px),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.all(3.5.px),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.px),
              ),
              padding: EdgeInsets.zero,
              foregroundColor: MyColorsLight().primary)),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: MyColorsLight().buttonText,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.zero),
      ),
      scaffoldBackgroundColor: MyColorsLight().scaffoldBackgroundColor,
    );
  }

  static ThemeData themeDataDark({
    required Orientation? orientation,
    String? fontFamily,
  }) {
    return ThemeData(
      textTheme: MyTextThemeDark().myTextTheme(fontFamily: fontFamily),
      primaryColor: MyColorsDark().primaryColor,
      colorScheme: ColorScheme(
          primary: MyColorsDark().primary,
          onPrimary: MyColorsDark().onPrimary,
          secondary: MyColorsDark().secondary,
          onSecondary: MyColorsDark().onSecondary,
          error: MyColorsDark().error,
          brightness: Brightness.dark,
          onError: MyColorsDark().onError,
          background: MyColorsDark().backGround,
          onBackground: MyColorsDark().onBackGround,
          surface: MyColorsDark().text,
          onSurface: MyColorsDark().onSurface),
      textSelectionTheme: TextSelectionThemeData(cursorColor: MyColorsDark().primaryColor),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.only(top: 1),
        constraints: BoxConstraints(maxHeight: 70.px),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: MyColorsDark().onPrimary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: MyColorsDark().primary),
        ),
        /*errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: MyColors().error),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: MyColors().error),
          ),*/
        //hintStyle: MyTextThemeStyle.bodyText2(MyColors().caption),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.px),
          ),
          maximumSize: Size(80.w, 50.px),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.all(3.5.px),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.px),
              ),
              padding: EdgeInsets.zero,
              foregroundColor: MyColorsDark().primary)),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: MyColorsDark().buttonText,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.all(3.5.px),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      ),
      scaffoldBackgroundColor: MyColorsDark().scaffoldBackgroundColor,
    );
  }
}
