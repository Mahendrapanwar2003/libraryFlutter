part of ui_library;

class MyThemeData {
  static ThemeData themeData({required Orientation? orientation,String? fontFamily}) {
    return ThemeData(
      textTheme: MyTextTheme().myTextTheme(fontFamily: fontFamily),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: MyColors().primary),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(top: 8),
          constraints: BoxConstraints(maxHeight: 70.px),
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
          hintStyle: MyTextThemeStyle.bodyText2(MyColors().caption)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.px),
          ),
          maximumSize: Size(70.w, 50.px),
          backgroundColor: MyColors().primary,
          foregroundColor: MyColors().onPrimary,
          padding: EdgeInsets.all(3.5.px),
        ),
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
              borderRadius: BorderRadius.circular(25.px),
            ),maximumSize: Size(35.w, 50.px),
            side: BorderSide(color: MyColors().caption,width: 1.0),
            padding: EdgeInsets.all(3.5.px)
        ), ),
    );
  }
}
