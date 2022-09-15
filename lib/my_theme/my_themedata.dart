part of ui_library;

class MyThemeData {
  static ThemeData get themeData {
    return ThemeData(
        primaryColor: MyColors().primary,
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
        backgroundColor: MyColors().backGround,
      textTheme: MyTextTheme().myTextTheme
        );
  }
}
