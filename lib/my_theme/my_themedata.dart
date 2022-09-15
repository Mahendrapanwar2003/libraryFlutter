part of ui_library;

class MyThemeData {
  static ThemeData get themeData {
    return ThemeData(
        primaryColor: MyColors().primary,
        backgroundColor: MyColors().backGround,
        textTheme: MyTextTheme().myTextTheme
    );
  }
}
