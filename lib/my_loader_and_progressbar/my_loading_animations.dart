part of ui_library;

class MyLoadingAnimations {
  static Widget loadingCircle(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFlipping.circle(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFlipping.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingCircleBox(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingGrid.circle(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget loadingSquareBox(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingGrid.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  // ignore: non_constant_identifier_names
  static Widget LoadingBouncingLineSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingLine.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  // ignore: non_constant_identifier_names
  static Widget LoadingBouncingLineCircle(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBouncingLine.circle(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingBumpingLineCircle(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBumpingLine.circle(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingBumpingLineSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingBumpingLine.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingFillingSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFilling.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingDoubleFlippingSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingDoubleFlipping.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingDoubleFlippingCircle(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingDoubleFlipping.circle(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingFadingLineSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFadingLine.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingFadingLineCircle(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingFadingLine.circle(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingJumpingLineSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingJumpingLine.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }

  static Widget LoadingRotatingSquare(
      {double Size = 100,
      int duration = 3,
      Color borderColor = Colors.cyan,
      Color backgroundColor = Colors.transparent,
      double borderSize = 5}) {
    return LoadingRotating.square(
      size: Size,
      duration: Duration(seconds: duration),
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      borderSize: borderSize,
    );
  }
}
