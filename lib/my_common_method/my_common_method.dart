part of ui_library;

class MyCommonMethod{


  static secureForScreenShot()
  async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  static void unFocsKeyBoard()
  {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static Future<bool> internetConnectionCheckerMethod()
  async {
    bool result = await InternetConnectionChecker().hasConnection;
    return result;
  }




}