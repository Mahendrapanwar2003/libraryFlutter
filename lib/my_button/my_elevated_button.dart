part of ui_library;

class MyElevatedButton extends StatelessWidget {
  //TODO aman is working
  final key;
  final onPressed;
  final buttonBackgroundColor;
  final autofocus = false;
  final clipBehavior = Clip.none;
  final child;
  final shadowDegree;
  int? duration;
  double? width;
  double? height;

  MyElevatedButton(
      {this.key,
      this.onPressed,
      this.duration,
      this.width,
      this.height,
      this.buttonBackgroundColor,
      this.shadowDegree,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      child: child,
      onPressed: onPressed,
      color: buttonBackgroundColor,
      shadowDegree: shadowDegree,
    );
  }
}
