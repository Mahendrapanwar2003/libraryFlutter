part of ui_library;

class MyThemeData {
  static ThemeData get themeData {
    return ThemeData(
      primaryColor: MyColors().primary,
      backgroundColor: MyColors().backGround,
      textTheme: MyTextTheme().myTextTheme,
      textSelectionTheme:
      TextSelectionThemeData(cursorColor: MyColors().primary),
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
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors().error),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize:Size(80.w, 50.px)
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            /*side: BorderSide(width: 2,color:MyColors().onPrimary),*/
            /* minimumSize:Size(40.w, 40.px)*/
          )
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(width: 2,color:MyColors().onPrimary),
              minimumSize:Size(40.w, 40.px)
          )
      ),
    );
  }
}
