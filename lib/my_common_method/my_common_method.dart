part of ui_library;

class MyCommonMethods {
  static secureFromScreenShot() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  static void unFocsKeyBoard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static Future<bool> internetConnectionCheckerMethod() async {
    bool result = await InternetConnectionChecker().hasConnection;
    return result;
  }

  static void showSnackBar(
      {required String message,
      required BuildContext context,
      Duration? duration}) {
    var snackBar = SnackBar(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Text(message),
      margin: EdgeInsets.only(left: 4.w, right: 3.w),
      behavior: SnackBarBehavior.floating,
      duration: duration ?? const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static String getDeviceType() {
    if (Platform.isAndroid) {
      return "Android";
    } else if (Platform.isIOS) {
      return "IOS";
    } else {
      return "";
    }
  }

  static void networkConnectionShowSnackBar({required BuildContext context}) {
    showSnackBar(message: "Check Your Internet Connection", context: context);
  }

  static void serverDownShowSnackBar({required BuildContext context}) {
    showSnackBar(message: "Server Down", context: context);
  }
}
