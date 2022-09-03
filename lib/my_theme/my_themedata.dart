part of ui_library;

class MyThemeData {
  static ThemeData get themeData {
    return ThemeData(
        primaryColor: MyColors().primary,
        backgroundColor:MyColors().primary ,
        indicatorColor: MyColors().indicatorColor,
           appBarTheme: AppBarTheme(
           color: MyColors().primary,
           backgroundColor: MyColors().onPrimary,
           ),
          colorScheme: ColorScheme(
          onPrimary: MyColors().primary,
          primary: MyColors().onPrimary,
          secondary: MyColors().secondary,
          onSecondary: MyColors().onSecondary,
          error: MyColors().error,
          onError: MyColors().onError,
          background: MyColors().backGround,
          onBackground: MyColors().onBackGround,
          brightness: Brightness.light,
          surface: MyColors().surface,
          onSurface: MyColors().onSurface,
        ),
        textTheme: MyTextTheme().myTextTheme);
  }
}
