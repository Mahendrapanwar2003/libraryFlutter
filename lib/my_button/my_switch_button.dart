part of ui_library;

class MySwitchButton {
  static switchButtonFirst({
    required bool value,
    required SwitcherSize size,
    required int switcherButtonRadius,
    required bool enabledSwitcherButtonRotate,
    required IconData iconOff,
    required IconData iconOn,
    required Color colorOff,
    required MaterialColor colorOn,
    required Null Function(bool state) onChanged,
  }) {
    return switchButtonFirst(
      value: false,
      size: SwitcherSize.large,
      switcherButtonRadius: 50,
      enabledSwitcherButtonRotate: true,
      iconOff: Icons.lock,
      iconOn: Icons.lock_open,
      colorOff: Colors.blueGrey.withOpacity(0.3),
      colorOn: Colors.blue,
      onChanged: (bool state) {},
    );
  }

  static switchButtonSecond({
    required bool value,
    required Null Function(dynamic value) onChange,
  }) {
    return switchButtonSecond(
      value: true,
      onChange: (value) {},
    );
  }
}
