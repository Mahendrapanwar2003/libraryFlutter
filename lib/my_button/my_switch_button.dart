part of ui_library;

class MySwitchButton {
  static switchButtonFirst({
     bool? value,
     SwitcherSize? size,
     int? switcherButtonRadius,
    bool? enabledSwitcherButtonRotate,
    IconData? iconOff,
    IconData? iconOn,
    Color? colorOff,
    MaterialColor? colorOn,
    Null Function(bool state)? onChanged,
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
