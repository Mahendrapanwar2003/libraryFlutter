part of ui_library;

class MyThemeData {

  static ThemeData themeDataLight({required Orientation? orientation,String? fontFamily,}) {
    return ThemeData(
      textTheme: MyTextThemeLight().myTextTheme(fontFamily: fontFamily,),
      textSelectionTheme:  TextSelectionThemeData(cursorColor: MyColorsLight().primaryColor),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.only(top: 1),
        constraints: BoxConstraints(maxHeight: 70.px),
        enabledBorder:  const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorConstants.onPrimary),
        ),
        focusedBorder:  const UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorConstants.primary),
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
              foregroundColor: ColorConstants.primary)),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: ColorConstants.button,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.zero),
      ),

      scaffoldBackgroundColor: MyColorsLight().scaffoldBackgroundColor,
    );
  }

  static ThemeData themeDataDark({required Orientation? orientation,String? fontFamily,}) {
    return ThemeData(
      textTheme: MyTextThemeDark().myTextTheme(fontFamily: fontFamily),

      textSelectionTheme:  TextSelectionThemeData(cursorColor: MyColorsDark().primaryColor),

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.only(top: 1),
        constraints: BoxConstraints(maxHeight: 70.px),
        enabledBorder:  UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorConstants.onPrimary),
        ),
        focusedBorder:  UnderlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorConstants.primary),
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
              foregroundColor: ColorConstants.primary)),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: ColorConstants.button,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.px),
            ),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.all(3.5.px),
            tapTargetSize:  MaterialTapTargetSize.shrinkWrap),
      ),

      scaffoldBackgroundColor: MyColorsDark().scaffoldBackgroundColor,
    );


  }

}
