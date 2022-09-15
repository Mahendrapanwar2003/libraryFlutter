part of ui_library;

class MyElevatedButton {
  static Elevated_Button_Theme(
      {Key? key,
      required VoidCallback? onPressed,
      VoidCallback? onLongPress,
      ValueChanged<bool>? onHover,
      ValueChanged<bool>? onFocusChange,
      ButtonStyle? style,
      FocusNode? focusNode,
      bool autofocus = false,
      Clip clipBehavior = Clip.none,
      MaterialStatesController? statesController,
      required Widget? child}) {
    return Elevated_Button_Theme(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),primary: MyColors().primary));
  }
}

/*class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Text("")
          ],
        ),
      ),
    );
  }
}*/
