part of ui_library;

class MyToast {
  static void successToast({
    required BuildContext context,
    required String message,
    AlignmentGeometry? alignment,
    int? duration,
    IconData? icon,
    String? image,
    Color? backgroundColor,
    Color? iconColor,
    Color? textColor,
  }) {
    ShowMToast toast = ShowMToast();
    toast.successToast(context,
        message: message,
        alignment:alignment ?? Alignment.bottomCenter,
        duration: duration ?? 1500,
        icon: icon,
        image: image,
        backgroundColor: backgroundColor ?? Colors.green.withOpacity(0.4),
        iconColor: iconColor ?? Colors.green.withOpacity(0.8),
        textColor: textColor ?? Colors.black.withOpacity(0.8));
  }

  static void errorToast({
    required BuildContext context,
    required String message,
    AlignmentGeometry? alignment,
    int? duration,
    IconData? icon,
    String? image,
    Color? backgroundColor,
    Color? iconColor,
    Color? textColor,
  }) {
    ShowMToast toast = ShowMToast();
    toast.successToast(context,
        message: message,
        alignment:alignment ?? Alignment.bottomCenter,
        duration: duration ?? 2500,
        icon: icon ,
        image: image,
        backgroundColor: backgroundColor ?? Colors.red.withOpacity(0.4),
        iconColor: iconColor ?? Colors.red.withOpacity(0.8),
        textColor: textColor ?? Colors.black.withOpacity(0.8));
  }
}
