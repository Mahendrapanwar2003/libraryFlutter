part of ui_library;


class MySwitchButton {
  static Switche1({
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
    return Switche1(
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

  static SwitcherButton2({
    required bool value,
    required Null Function(dynamic value) onChange,
  }) {
    return SwitcherButton2(
      value: true,
      onChange: (value) {
        print(value);
      },
    );
  }
}
