part of ui_library;

abstract class MyColors {
  /* --------------------------Primary Colors Collection--------------------------*/
  Color get primaryColor;

  Color get primary;

  Color get primaryContainer => const Color(0xff);

  Color get onPrimary ;

  Color get dashMenuColor;

  Color get onPrimaryContainer => const Color(0xff);

  Color get primaryVariant => const Color(0xff);

  Color get inversePrimary => const Color(0xff);

  /* --------------------------Secondary Colors Collection--------------------------*/
  Color get secondary ;

  Color get secondaryContainer => const Color(0xff);

  Color get onSecondary => const Color(0xff);

  Color get onSecondaryContainer => const Color(0xff);

  Color get secondaryVariant => const Color(0xff);

  Color get inverseSecondary => const Color(0xff);

  /* --------------------------Tertiary Colors Collection--------------------------*/
  Color get tertiary => const Color(0xff);

  Color get tertiaryContainer => const Color(0xff);

  Color get onTertiary => const Color(0xff);

  Color get onTertiaryContainer => const Color(0xff);

  /* --------------------------Background / ScaffoldBackgroundColor / DialogBackgroundColor Colors Collection--------------------------*/
  Color get backgroundColor => const Color(0xff);

  Color get backGround => const Color(0xffEDF2FE);

  Color get onBackGround => const Color(0xff);

  Color get scaffoldBackgroundColor ;

  Color get dialogBackgroundColor => const Color(0xff);

  /* --------------------------  BottomAppBarColor / AppBarBackgroundColor / AppBarColor Colors Collection--------------------------*/
  Color get bottomAppBarColor => const Color(0xff);

  Color get appBarBackgroundColor => const Color(0xff);

  Color get appBarColor => const Color(0xff);

  /* --------------------------Error / DisabledColor/ IndicatorColor Colors Collection--------------------------*/
  Color get errorColor => const Color(0xff);

  Color get error;

  Color get onError => const Color(0xff);

  Color get errorContainer => const Color(0xff);

  Color get onErrorContainer => const Color(0xff);

  Color get disabledColor => const Color(0xff);

  Color get indicatorColor => const Color(0xff);


  /* --------------------------Success Colors Collection--------------------------*/

  Color get success;

  Color get onSuccess => const Color(0xff);

  /* --------------------------Surface Colors Collection--------------------------*/
  Color get surface => const Color(0xff);

  Color get onSurface => const Color(0xff);

  Color get surfaceVariant => const Color(0xff);

  Color get onSurfaceVariant => const Color(0xff);

  Color get inverseSurface => const Color(0xff);

  Color get onInverseSurface => const Color(0xff);

  Color get surfaceTin => const Color(0xff);

  /* -------------------------- DividerColor / CardColor / FocusColor / CanvasColor Colors Collection--------------------------*/
  Color get dividerColor => const Color(0xff);

  Color get cardColor => const Color(0xff);

  Color get focusColor => const Color(0xff);

  Color get canvasColor => const Color(0xff);

  /* -------------------------- HoverColor / HintColor / ShadowColorColors / SplashColor Collection--------------------------*/
  Color get hoverColor => const Color(0xff);

  Color get hintColor => const Color(0xff);

  Color get shadowColor => const Color(0xff);

  Color get splashColor => const Color(0xff);


  /* --------------------------Text Colors Collection--------------------------*/

  Color get text;

  Color get onText;

  Color get caption;

  Color get labelText;

  Color get textField;

  Color get buttonText;

  /* --------------------------bottomBarColor Colors Collection--------------------------*/

  Color get bottomBar;

}


class MyColorsLight extends MyColors{
  @override
  Color get primaryColor =>  const Color(0xFFFBAD33);

  @override
  Color get primary =>const Color(0xFFF2653A);

  @override
  Color get onPrimary => const Color(0xFF9E9E9E);

  @override
  Color get secondary =>  const  Color(0xFFffffff);

  @override
  Color get dashMenuColor => const Color(0xFFE0E0E0);

  @override
  Color get scaffoldBackgroundColor => const Color(0xfff2f2f2);

  @override
  Color get buttonText => const Color(0xFFFFFFFF);

  @override
  Color get labelText => const Color(0xffa0a0a0);

  @override
  Color get textField => const Color(0xff000000);

  @override
  Color get bottomBar => const Color(0xFFFFFFFF);

  @override
  Color get text => const Color(0xff000000);

  @override
  Color get onText => const Color(0xFFFFFFFF);

  @override
  Color get caption => const Color(0xff666666);

  @override
  Color get success => const Color(0xff74FF82);

  @override
  Color get error => const Color(0xffFF7474);

}

class MyColorsDark extends MyColors{

  @override
  Color get primaryColor =>  const Color(0xFFFBAD33);

  @override
  Color get primary =>const Color(0xFFF2653A);

  @override
  Color get onPrimary => const Color(0xFF9E9E9E);

  @override
  Color get dashMenuColor => const Color(0x40FFFFFF);

  @override
  Color get secondary =>  const  Color(0xFF000000);

  @override
  Color get scaffoldBackgroundColor => const Color(0xff101010);

  @override
  Color get buttonText => const Color(0xFFFFFFFF);

  @override
  Color get labelText => const Color(0xffa0a0a0);

  @override
  Color get textField => const Color(0xffffffff);

  @override
  Color get bottomBar => const Color(0xff141414);

  @override
  Color get text => const Color(0xffffffff);

  @override
  Color get onText => const Color(0xff141414);

  @override
  Color get caption => const Color(0xff666666);

  @override
  Color get success => const Color(0xff74FF82);

  @override
  Color get error => const Color(0xffFF7474);
}



class ColorConstant {
  static const Color productItemYellowColor = Color(0xFFFFC600);
  static const Color linearGradientStart = Color(0xFFFBAD33);
  static const Color linearGradientEnd = Color(0xFFF2653A);
  static const Color walletTransactionRedColor = Color(0xFFFF7474);
  static const Color productItemRedColor = Color(0xFFFF0000);
  static const Color walletTransactionGreenColor = Color(0xFF73FF81);
  static const Color customizeGreenColor = Color(0xFFBCFF00);
  static const Color productItemBlueColor = Color(0xFF5BB0FF);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color whiteModeLightestGreyColor = Color(0xFFF5F5F5);
  static const Color whiteModeLighterGreyColor = Color(0xFFEEEEEE);
  static const Color whiteModeLightGreyColor = Color(0xFFE0E0E0);
  static const Color otpGreyColor = Color(0xFFF0F0F0);
  static const Color customizeGreyColor = Color(0xE5FFFFFF);
  static const Color addPaymentCardGreyColor = Color(0xFFD9D9D9);
  static const Color paymentMethodDashColor = Color(0xFFBDBDBD);
  static const Color greyColor = Color(0x99FFFFFF);
  static const Color whiteModeGreyColor = Color(0xFF9E9E9E);
  static const Color reviewFilterColor = Color(0xFF929292);
  static const Color searchBarGreyColor = Color(0xFF7C7C7C);
  static const Color hintGreyColor = Color(0xFF757575);
  static const Color profileMenuDashColor = Color(0x40FFFFFF);
  static const Color sellProductConditionTextColor = Color(0xFF535353);
  static const Color unavailableSizeTextColor = Color(0xFF444040);
  static const Color searchDashColor = Color(0x26FFFFFF);
  static const Color unavailableSizeBorderColor = Color(0xFF353535);
  static const Color profileCompletionColor = Color(0x1A000000);
  static const Color backgroundBlurColor = Color(0x801F1F1F);
  static const Color bottomSheetDashColor = Color(0x66000000);
  static const Color bottomSheetGreyTextColor = Color(0x99000000);
  static const Color blackColor = Color(0xFF000000);
  static const Color whiteBGColor = Color(0xFFF2F2F2);
}

class ColorConstants {
  static const Color onPrimary = Color(0xFF9E9E9E);

  static const Color primary = Color(0xFFFBAD33);

  static const Color secondary = Color(0xFFF2653A);

  static const Color button = Color(0xFFFFFFFF);

  static const Color textField = Color(0xFF000000);
  static const Color whiteModeGreyColor = Color(0xFF9E9E9E);

  static const Color productItemYellowColor = Color(0xFFFFC600);
  static const Color walletTransactionRedColor = Color(0xFFFF7474);
  static const Color productItemRedColor = Color(0xFFFF0000);
  static const Color walletTransactionGreenColor = Color(0xFF73FF81);
  static const Color customizeGreenColor = Color(0xFFBCFF00);
  static const Color productItemBlueColor = Color(0xFF5BB0FF);
  static const Color whiteModeLightestGreyColor = Color(0xFFF5F5F5);
  static const Color whiteModeLighterGreyColor = Color(0xFFEEEEEE);
  static const Color whiteModeLightGreyColor = Color(0xFFE0E0E0);
  static const Color otpGreyColor = Color(0xFFF0F0F0);
  static const Color customizeGreyColor = Color(0xE5FFFFFF);
  static const Color addPaymentCardGreyColor = Color(0xFFD9D9D9);
  static const Color paymentMethodDashColor = Color(0xFFBDBDBD);
  static const Color greyColor = Color(0x99FFFFFF);
  static const Color reviewFilterColor = Color(0xFF929292);
  static const Color searchBarGreyColor = Color(0xFF7C7C7C);
  static const Color hintGreyColor = Color(0xFF757575);
  static const Color profileMenuDashColor = Color(0x40FFFFFF);
  static const Color sellProductConditionTextColor = Color(0xFF535353);
  static const Color unavailableSizeTextColor = Color(0xFF444040);
  static const Color searchDashColor = Color(0x26FFFFFF);
  static const Color unavailableSizeBorderColor = Color(0xFF353535);
  static const Color profileCompletionColor = Color(0x1A000000);
  static const Color backgroundBlurColor = Color(0x801F1F1F);
  static const Color bottomSheetDashColor = Color(0x66000000);
  static const Color bottomSheetGreyTextColor = Color(0x99000000);
  static const Color whiteBGColor = Color(0xFFF2F2F2);
}
