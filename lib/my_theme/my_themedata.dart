part of ui_library;

class MyThemeData {
  static ThemeData themeData({required Orientation? orientation}) {
    return ThemeData(
      primaryColor: MyColors().primary,
      backgroundColor: MyColors().backGround,
      textTheme: MyTextTheme().myTextTheme,
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: MyColors().primary),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.only(top: 2),
        constraints: BoxConstraints(maxHeight: 40.px),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().onPrimary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().primary),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().error),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().error),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
            maximumSize: Size(70.w, 50.px),
            foregroundColor: MyColors().primary,
            padding: EdgeInsets.all(3.5.px)),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.px),
              ),
              padding: EdgeInsets.zero,
              foregroundColor: MyColors().primary)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(width: 2, color: MyColors().onPrimary),
              minimumSize: Size(40.w, 40.px))),
    );
  }
}
