part of ui_library;

class MyThemeData {
  static ThemeData get themeData {
    return ThemeData(
      primaryColor: MyColors().primary,
      backgroundColor: MyColors().backGround,
      textTheme: MyTextTheme().myTextTheme,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.only(top: 20),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().onPrimary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().primary),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().error),
        ),focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().error),
        ),
      ),
    );
  }
}
