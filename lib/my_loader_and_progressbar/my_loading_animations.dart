part of ui_library;

class MyLoadingAnimations {
  static Widget loadingCircle(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double? borderSize}) {
    return LoadingFlipping.circle(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFlipping.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingCircleBox(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingGrid.circle(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingSquareBox(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingGrid.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  // ignore: non_constant_identifier_names
  static Widget loadingBouncingLineSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingLine.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  // ignore: non_constant_identifier_names
  static Widget loadingBouncingLineCircle(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingLine.circle(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingBumpingLineCircle(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBumpingLine.circle(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingBumpingLineSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBumpingLine.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingFillingSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFilling.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingDoubleFlippingSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingDoubleFlipping.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingDoubleFlippingCircle(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingDoubleFlipping.circle(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingFadingLineSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFadingLine.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingFadingLineCircle(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFadingLine.circle(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingJumpingLineSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingJumpingLine.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingRotatingSquare(
      {required double size,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingRotating.square(
      size: size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }
}
