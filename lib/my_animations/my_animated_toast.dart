part of ui_library;

class MyAnimatedToastStyled {
  static normalToast({required BuildContext context, String toastString = ''}) {
    return showToast(
      toastString,
      context: context,
    );
  }

  static normal2Toast(
      {required BuildContext context,
      String toastString = '',
      StyledToastAnimation animation = StyledToastAnimation.scale}) {
    return showToast(
      toastString,
      context: context,
      animation: animation,
    );
  }

  static onlyTextToast(
      {required BuildContext context, String toastString = ''}) {
    return showToast(toastString, context: context);
  }

  static popUpToastCenter(
      {StyledToastAnimation reverseAnimation = StyledToastAnimation.fade,
      int animDuration = 1,
      StyledToastAnimation animation = StyledToastAnimation.scale,
      required BuildContext context,
      String toastString = '',
      Curve reverseCurve = Curves.linear,
      Curve curve = Curves.elasticOut,
      int duration = 4,
      StyledToastPosition position = StyledToastPosition.center}) {
    return showToast(
      toastString,
      context: context,
      animation: animation,
      reverseAnimation: reverseAnimation,
      position: position,
      animDuration: Duration(seconds: animDuration),
      duration: Duration(seconds: duration),
      curve: curve,
      reverseCurve: reverseCurve,
    );
  }

  static myBottomSpringToast(
      {required BuildContext context,
      String toastString = '',
      required StyledToastPosition position,
      int animDuration = 1,
      int duration = 4,
      Curve curve = Curves.bounceInOut}) {
    return showToast(
      toastString,
      context: context,
      position: position,
      animDuration: Duration(seconds: animDuration),
      duration: Duration(seconds: duration),
      onInitState: (Duration toastDuration, Duration animDuration) async {},
      animationBuilder: (
        BuildContext context,
        AnimationController controller,
        Duration duration,
        Widget child,
      ) {
        return SlideTransition(
          position: getAnimation<Offset>(
              const Offset(0.0, 3.0), const Offset(0, 0), controller,
              curve: curve),
          child: child,
        );
      },
      reverseAnimBuilder: (
        BuildContext context,
        AnimationController controller,
        Duration duration,
        Widget child,
      ) {
        return SlideTransition(
          position: getAnimation<Offset>(
              const Offset(0.0, 0.0), const Offset(-3.0, 0), controller,
              curve: curve),
          child: child,
        );
      },
    );
  }

  static myToast(
      {required BuildContext context,
      String toastString = '',
      required StyledToastPosition position,
      int animDuration = 1,
      int duration = 4,
      Curve curve = Curves.bounceInOut}) {
    return showToast(
      toastString,
      context: context,
      position: position,
      animDuration: Duration(seconds: animDuration),
      duration: Duration(seconds: duration),
      onInitState: (Duration toastDuration, Duration animDuration) async {},
      animationBuilder: (
        BuildContext context,
        AnimationController controller,
        Duration duration,
        Widget child,
      ) {
        return SlideTransition(
          position: getAnimation<Offset>(
              const Offset(0.0, 3.0), const Offset(0, 0), controller,
              curve: curve),
          child: child,
        );
      },
      reverseAnimBuilder: (
        BuildContext context,
        AnimationController controller,
        Duration duration,
        Widget child,
      ) {
        return SlideTransition(
          position: getAnimation<Offset>(
              const Offset(0.0, 0.0), const Offset(-3.0, 0), controller,
              curve: curve),
          child: child,
        );
      },
    );
  }
}
