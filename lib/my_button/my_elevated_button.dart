part of ui_library;

class MyElevatedButton extends StatelessWidget {
  final key;
  final onPressed;
  final onLongPress;
  final onFocusChange;
  final style;
  final focusNode;
  final buttonBackgroundColor;
  final autofocus = false;
  final clipBehavior = Clip.none;
  final shadowDegree;
  final child;
  final duration;
  final width;
  final height;
  const MyElevatedButton(
      {this.key,
      this.onPressed,
      this.onLongPress,
      this.onFocusChange,
      this.style,
      this.focusNode,
      this.child,
      this.duration,
      this.width,
      this.height,
      this.buttonBackgroundColor,
      this.shadowDegree})
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
